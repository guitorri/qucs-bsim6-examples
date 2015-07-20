<Qucs Schematic 0.0.19>
<Properties>
  <View=-61,13,1085,1530,0.853821,0,3>
  <Grid=10,10,0>
  <DataSet=inverter_transient.dat>
  <DataDisplay=inverter_transient.dpl>
  <OpenDisplay=0>
  <Script=inverter_transient.m>
  <RunScript=0>
  <showFrame=4>
  <FrameText0=BSIM 6.1.0 benchmark: inverter_transient\nAdapted from benchmark released by the BSIM Group.\nIt compares data from HSPICE and QUCS.>
  <FrameText1=Drawn By: Guilherme Brondani Torri>
  <FrameText2=Date: July 2015>
  <FrameText3=Revision: 1>
</Properties>
<Symbol>
</Symbol>
<Components>
  <GND * 1 230 300 0 0 0 0>
  <Vdc V2 1 130 90 18 -26 0 1 "1" 1>
  <GND * 1 130 120 0 0 0 0>
  <GND * 1 90 340 0 0 0 0>
  <Vdc V1 1 90 310 18 -26 0 1 "0.5 V" 1>
  <Vac V3 1 90 230 18 -26 0 1 "0.5 V" 1 "1 MHz" 1 "0" 0 "0.01" 0>
  <Sub SUB5 1 810 180 40 44 0 0 "inv.sch" 0>
  <Sub SUB4 1 660 180 40 44 0 0 "inv.sch" 0>
  <Sub SUB3 1 510 180 40 44 0 0 "inv.sch" 0>
  <Sub SUB2 1 360 180 40 44 0 0 "inv.sch" 0>
  <Sub SUB1 1 210 180 40 44 0 0 "inv.sch" 0>
  <R R2 1 750 250 15 -26 0 1 "1 MOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "european" 0>
  <.DC DC1 1 290 350 0 33 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
  <.TR TR2 1 430 350 0 51 0 0 "lin" 1 "0" 1 "5 us" 1 "1000" 1 "Trapezoidal" 0 "2" 0 "1 ns" 0 "1e-16" 0 "150" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "26.85" 0 "1e-3" 0 "1e-6" 0 "1" 0 "CroutLU" 0 "no" 0 "yes" 0 "0" 0>
</Components>
<Wires>
  <130 40 130 60 "" 0 0 0 "">
  <130 40 230 40 "" 0 0 0 "">
  <90 260 90 280 "" 0 0 0 "">
  <750 280 750 290 "" 0 0 0 "">
  <90 180 90 200 "" 0 0 0 "">
  <90 180 150 180 "vi" 160 130 47 "">
  <230 250 230 290 "" 0 0 0 "">
  <230 290 230 300 "" 0 0 0 "">
  <230 290 380 290 "" 0 0 0 "">
  <380 250 380 290 "" 0 0 0 "">
  <230 40 230 80 "" 0 0 0 "">
  <230 80 230 110 "" 0 0 0 "">
  <230 80 380 80 "" 0 0 0 "">
  <380 80 380 110 "" 0 0 0 "">
  <380 290 530 290 "" 0 0 0 "">
  <530 250 530 290 "" 0 0 0 "">
  <380 80 530 80 "" 0 0 0 "">
  <530 80 680 80 "" 0 0 0 "">
  <530 80 530 110 "" 0 0 0 "">
  <530 290 680 290 "" 0 0 0 "">
  <680 290 750 290 "" 0 0 0 "">
  <680 250 680 290 "" 0 0 0 "">
  <680 80 680 110 "" 0 0 0 "">
  <750 290 830 290 "" 0 0 0 "">
  <830 250 830 290 "" 0 0 0 "">
  <680 80 830 80 "" 0 0 0 "">
  <830 80 830 110 "" 0 0 0 "">
  <750 180 750 220 "" 0 0 0 "">
  <750 180 750 180 "out4" 760 90 0 "">
  <900 180 900 180 "vo" 920 90 0 "">
  <600 180 600 180 "out3" 610 90 0 "">
  <450 180 450 180 "out2" 460 90 0 "">
  <300 180 300 180 "out1" 310 90 0 "">
</Wires>
<Diagrams>
  <Rect 140 823 774 331 3 #c0c0c0 1 00 1 0 5e-07 5e-06 0 -0.2 0.2 1.2 1 -1 0.5 1 315 0 225 "Time (s)" "" "">
	<"vi.Vt" #0000ff 0 3 0 0 0>
	<"out1.Vt" #ff0000 0 3 0 0 0>
	<"out2.Vt" #ff00ff 0 3 0 0 0>
	<"out3.Vt" #00ff00 0 3 0 0 0>
	<"out4.Vt" #00ffff 0 3 0 0 0>
	<"vo.Vt" #ff8000 0 3 0 0 0>
  </Rect>
  <Rect 140 1203 774 331 3 #c0c0c0 1 00 1 0 5e-07 5e-06 0 -0.2 0.2 1.2 0 -0.2 0.2 1.2 315 0 225 "Time (s)" "" "">
	<"vi.Vt" #0000ff 0 3 0 0 0>
	<"vo.Vt" #ff8000 0 3 0 0 0>
	<"hspice0:vi" #800080 2 3 0 2 1>
	<"hspice0:vo" #996633 2 3 0 2 1>
  </Rect>
  <Rect 150 1465 419 205 3 #c0c0c0 1 00 0 4e-06 5e-07 5e-06 0 -0.2 0.2 1.2 0 -0.2 0.2 1.2 315 0 225 "Time (s)" "" "">
	<"vi.Vt" #0000ff 0 3 0 0 0>
	<"vo.Vt" #ff8000 0 3 0 0 0>
	<"hspice0:vi" #800080 2 3 0 2 1>
	<"hspice0:vo" #996633 2 3 0 2 1>
  </Rect>
</Diagrams>
<Paintings>
  <Text 550 320 14 #ff0000 0 "Note: R2 was added to help with convergence in Qucsator">
</Paintings>
