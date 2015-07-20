
import numpy as np
from pylab import *


# input file BSIM6.1.0/Benchmark_test/idvd_nmos.lis
lis = 'idvd_nmos.lis'

# roughly locate the simulated reults (frames), marked by 'x'-start and 'y'-end
start=[]
end=[]
with open(lis) as fp:
    for i,line in enumerate(fp):
        # get start of data
        if ('x\n' ==line):
            print 'start' , i, line
            start.append(i)

        # get end of data
        if ('y\n' ==line):
            print 'end', i, line
            end.append(i)

# split the source into temporary files, one per simulation run
for frame in range(len(start)):
    head=4 # skip header

    # read original file
    text = open(lis).readlines()

    outfilename='temp%s.dat' %(frame)
    print 'saving:', outfilename

    # save each simulation (frame) to a temp file
    f = open(outfilename, "w")
    f.writelines( text[start[frame]+head:end[frame]] )
    f.close()

# read the temporary files into a list of numpy arrays
data=[]
for fn in range(len(start)):
    outfilename='temp%s.dat' %(fn)
    data.append(np.genfromtxt(outfilename))

# plot HSPICE Vds - Ids
figure()
for r,sim in enumerate(data):
    vd  = sim[:,0]
    ids = sim[:,1]
    if r==0:
        plot(vd, ids, 'b--', linewidth=2, label='HSPICE')
    else:
        plot(vd, ids, 'b--', linewidth=2)
    hold(True)
    xlim(0,1.3)
    grid(True)
    xlabel('Vds (V)')
    ylabel('Ids (A)')

# parse and plot QUCS Vds-IDS
import parse_result as pr
dat = pr.parse_file('test_idvd_nmos.dat')

for i in range(3):
    if i==0 :
        plot(dat['Vds'],dat['Ids.I'][i],'r-.', linewidth=2, label='QUCS')
    else:
        plot(dat['Vds'],dat['Ids.I'][i],'r-.', linewidth=2)

legend()

savefig('bsim6_idvd_nmos_HSPICE-QUCS.png', bbox_inches='tight')
savefig('bsim6_idvd_nmos_HSPICE-QUCS.pdf', bbox_inches='tight')
show()








