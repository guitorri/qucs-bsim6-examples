
import numpy as np
from pylab import *


# input file BSIM6.1.0/Benchmark_test/inverter_transient.lis
lis = 'inverter_transient.lis'

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
    t = sim[:,0]
    vi = sim[:,1]
    vo = sim[:,2]
    plot(t*1e6, vi, 'k-', linewidth=1, label='vi')
    plot(t*1e6, vo, 'b--', linewidth=2, label='vo - HSPICE')
    hold(True)
    grid(True)
    xlabel('time (us)')
    ylabel('Vi, Vo (V)')


# parse and plot QUCS Vds-IDS
import parse_result as pr
dat = pr.parse_file('inverter_transient.dat')

## why is this array not flat??
vo = np.ndarray.flatten(dat['vo.Vt'])

plot(dat['time']*1e6,vo, 'r-.', linewidth=2, label='vo - QUCS')

#plot(dat['vi.V'],dat['vi.V'],'k-')

legend()

savefig('bsim6_inverter_transient_HSPICE-QUCS.png', bbox_inches='tight')
savefig('bsim6_inverter_transient_HSPICE-QUCS.pdf', bbox_inches='tight')
show()

