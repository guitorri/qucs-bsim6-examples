
Qucs Examples for BSIM 6.1.0.
============================

This directory contains examples that reproduce the benchmark tests
published by the BSIM Group.

There are five benchmark circuits for the BSIM 6.1.0.

A modified version of Qucs is required to run this examples.
See: 
  

- Description of files in each project:
 - *.sp  : HSPICE example netlist, benchmark
 - *.lis : HSPICE result file
 - temp*.dat : Data dump from *.lis (see parse_result.py)
 - hspice*.csv : tem*.dat formated as CSV
 - hspice*.dat : CSV converted to Qucsdata (with qucsconv [1])
 - *.pdf : figure from plot_*.py, schematic printed to file
 - *.png : figure from plot_*.py, schematic printed to file
 - *.sch : Qucs schematic corresponding to the BSIM6 benchmark circuits

- Scripts
  - parse_result.py : used to extract data from the .lis file
  - plot_*.py: do a simple plot for HSPICE vs Qucs results

- Directory Contents (simplified):
  .
  ├── Readme.txt : this file
  ├── modelcard_prj : modelcards
  │   ├── bsim6bench.cir : used to generate a library with qucsconv [2]
  │   ├── bsim6bench.lib : library of parameterized components used in the benchmarks
  │   ├── modelcard.nmos : original modelcard
  │   └── modelcard.pmos : original modelcard
  ├── idvd_nmos_prj
  │   └── test_idvd_nmos.sch
  ├── idvd_pmos_prj
  │   └── test_idvd_pmos.sch
  ├── idvg_nmos_prj
  │   └── test_idvg_nmos.sch
  ├── inv_dc_prj
  │   ├── inv_dc.sch
  ├── inverter_transient_prj
  │   ├── inv.sch : subcircuit
  │   └── test_inverter_transient.sch
  └── user_lib : local library of components
      └── bsim6bench.lib : see modelcard_prj

[1] qucsconv -if csv -of qucsdata -i hspice0.csv -o hspice0.dat
[2] qucsconv -if spice -of qucslib -i bsim6bench.cir -o bsim6bench.lib
