
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
create_project: 2

00:00:052

00:00:052	
485.7892	
180.609Z17-268h px� 
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental D:/Document/TMP/BubblePipelineCPU/BubblePipelineCPU.srcs/utils_1/imports/synth_1/test.dcpZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2[
YD:/Document/TMP/BubblePipelineCPU/BubblePipelineCPU.srcs/utils_1/imports/synth_1/test.dcpZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
^
Command: %s
53*	vivadotcl2-
+synth_design -top CPU -part xc7a35tcsg324-1Z4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
z
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2	
xc7a35tZ17-347h px� 
j
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2	
xc7a35tZ17-349h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
o
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
2Z8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
N
#Helper process launched with PID %s4824*oasys2
22680Z8-7075h px� 
�
%s*synth2u
sStarting Synthesize : Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 937.496 ; gain = 438.418
h px� 
�
.redeclaration of ANSI port '%s' is not allowed7382*oasys2
PC_Cur2Q
MD:/Document/TMP/BubblePipelineCPU/BubblePipelineCPU.srcs/sources_1/new/test.v2
128@Z8-11121h px� 
�
synthesizing module '%s'%s4497*oasys2
CPU2
 2Q
MD:/Document/TMP/BubblePipelineCPU/BubblePipelineCPU.srcs/sources_1/new/test.v2
48@Z8-6157h px� 
�
!system %s call '%s' not supported38048*oasys2
task2	
monitor2Q
MD:/Document/TMP/BubblePipelineCPU/BubblePipelineCPU.srcs/sources_1/new/test.v2
728@Z8-11581h px� 
�
synthesizing module '%s'%s4497*oasys2
Hazard2
 2Q
MD:/Document/TMP/BubblePipelineCPU/BubblePipelineCPU.srcs/sources_1/new/test.v2
2968@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Hazard2
 2
02
12Q
MD:/Document/TMP/BubblePipelineCPU/BubblePipelineCPU.srcs/sources_1/new/test.v2
2968@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
Mux22
 2Q
MD:/Document/TMP/BubblePipelineCPU/BubblePipelineCPU.srcs/sources_1/new/test.v2
6798@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Mux22
 2
02
12Q
MD:/Document/TMP/BubblePipelineCPU/BubblePipelineCPU.srcs/sources_1/new/test.v2
6798@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
PC2
 2Q
MD:/Document/TMP/BubblePipelineCPU/BubblePipelineCPU.srcs/sources_1/new/test.v2
6608@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
PC2
 2
02
12Q
MD:/Document/TMP/BubblePipelineCPU/BubblePipelineCPU.srcs/sources_1/new/test.v2
6608@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
InstructionMemory2
 2Q
MD:/Document/TMP/BubblePipelineCPU/BubblePipelineCPU.srcs/sources_1/new/test.v2
7078@Z8-6157h px� 
�
,$readmem data file '%s' is read successfully3426*oasys2&
$..\..\constrs_1\new\BranchHazard.txt2Q
MD:/Document/TMP/BubblePipelineCPU/BubblePipelineCPU.srcs/sources_1/new/test.v2
7208@Z8-3876h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
InstructionMemory2
 2
02
12Q
MD:/Document/TMP/BubblePipelineCPU/BubblePipelineCPU.srcs/sources_1/new/test.v2
7078@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
PCAdd42
 2Q
MD:/Document/TMP/BubblePipelineCPU/BubblePipelineCPU.srcs/sources_1/new/test.v2
7278@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
PCAdd42
 2
02
12Q
MD:/Document/TMP/BubblePipelineCPU/BubblePipelineCPU.srcs/sources_1/new/test.v2
7278@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
JumpController2
 2Q
MD:/Document/TMP/BubblePipelineCPU/BubblePipelineCPU.srcs/sources_1/new/test.v2
3268@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
JumpController2
 2
02
12Q
MD:/Document/TMP/BubblePipelineCPU/BubblePipelineCPU.srcs/sources_1/new/test.v2
3268@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
IF2ID2
 2Q
MD:/Document/TMP/BubblePipelineCPU/BubblePipelineCPU.srcs/sources_1/new/test.v2
4798@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
IF2ID2
 2
02
12Q
MD:/Document/TMP/BubblePipelineCPU/BubblePipelineCPU.srcs/sources_1/new/test.v2
4798@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2

Controller2
 2Q
MD:/Document/TMP/BubblePipelineCPU/BubblePipelineCPU.srcs/sources_1/new/test.v2
3358@Z8-6157h px� 
�
!system %s call '%s' not supported38048*oasys2

function2
time2Q
MD:/Document/TMP/BubblePipelineCPU/BubblePipelineCPU.srcs/sources_1/new/test.v2
4738@Z8-11581h px� 
�
!system %s call '%s' not supported38048*oasys2

function2
time2Q
MD:/Document/TMP/BubblePipelineCPU/BubblePipelineCPU.srcs/sources_1/new/test.v2
4748@Z8-11581h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

Controller2
 2
02
12Q
MD:/Document/TMP/BubblePipelineCPU/BubblePipelineCPU.srcs/sources_1/new/test.v2
3358@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2	
RegFile2
 2Q
MD:/Document/TMP/BubblePipelineCPU/BubblePipelineCPU.srcs/sources_1/new/test.v2
7558@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2	
RegFile2
 2
02
12Q
MD:/Document/TMP/BubblePipelineCPU/BubblePipelineCPU.srcs/sources_1/new/test.v2
7558@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
Mux42
 2Q
MD:/Document/TMP/BubblePipelineCPU/BubblePipelineCPU.srcs/sources_1/new/test.v2
6928@Z8-6157h px� 
H
%s
*synth20
.	Parameter DEPTH bound to: 5 - type: integer 
h p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Mux42
 2
02
12Q
MD:/Document/TMP/BubblePipelineCPU/BubblePipelineCPU.srcs/sources_1/new/test.v2
6928@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
in112
Mux42

CPU_Mux4_12Q
MD:/Document/TMP/BubblePipelineCPU/BubblePipelineCPU.srcs/sources_1/new/test.v2
1698@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2

CPU_Mux4_12
Mux42
62
52Q
MD:/Document/TMP/BubblePipelineCPU/BubblePipelineCPU.srcs/sources_1/new/test.v2
1698@Z8-7023h px� 
�
synthesizing module '%s'%s4497*oasys2

SignExtend2
 2Q
MD:/Document/TMP/BubblePipelineCPU/BubblePipelineCPU.srcs/sources_1/new/test.v2
7368@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

SignExtend2
 2
02
12Q
MD:/Document/TMP/BubblePipelineCPU/BubblePipelineCPU.srcs/sources_1/new/test.v2
7368@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
ID2EX2
 2Q
MD:/Document/TMP/BubblePipelineCPU/BubblePipelineCPU.srcs/sources_1/new/test.v2
5088@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
ID2EX2
 2
02
12Q
MD:/Document/TMP/BubblePipelineCPU/BubblePipelineCPU.srcs/sources_1/new/test.v2
5088@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
ALU2
 2Q
MD:/Document/TMP/BubblePipelineCPU/BubblePipelineCPU.srcs/sources_1/new/test.v2
7888@Z8-6157h px� 
�
-case statement is not full and has no default155*oasys2Q
MD:/Document/TMP/BubblePipelineCPU/BubblePipelineCPU.srcs/sources_1/new/test.v2
8018@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
ALU2
 2
02
12Q
MD:/Document/TMP/BubblePipelineCPU/BubblePipelineCPU.srcs/sources_1/new/test.v2
7888@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2

PCBranch2
 2Q
MD:/Document/TMP/BubblePipelineCPU/BubblePipelineCPU.srcs/sources_1/new/test.v2
7458@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

PCBranch2
 2
02
12Q
MD:/Document/TMP/BubblePipelineCPU/BubblePipelineCPU.srcs/sources_1/new/test.v2
7458@Z8-6155h px� 
�
Fall outputs are unconnected for this instance and logic may be removed3605*oasys2Q
MD:/Document/TMP/BubblePipelineCPU/BubblePipelineCPU.srcs/sources_1/new/test.v2
2348@Z8-4446h px� 
�
synthesizing module '%s'%s4497*oasys2
Mux2__parameterized02
 2Q
MD:/Document/TMP/BubblePipelineCPU/BubblePipelineCPU.srcs/sources_1/new/test.v2
6798@Z8-6157h px� 
H
%s
*synth20
.	Parameter DEPTH bound to: 1 - type: integer 
h p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Mux2__parameterized02
 2
02
12Q
MD:/Document/TMP/BubblePipelineCPU/BubblePipelineCPU.srcs/sources_1/new/test.v2
6798@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
out2
Mux22

CPU_Mux2_52Q
MD:/Document/TMP/BubblePipelineCPU/BubblePipelineCPU.srcs/sources_1/new/test.v2
2348@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2

CPU_Mux2_52
Mux22
42
32Q
MD:/Document/TMP/BubblePipelineCPU/BubblePipelineCPU.srcs/sources_1/new/test.v2
2348@Z8-7023h px� 
�
synthesizing module '%s'%s4497*oasys2
EX2MEM2
 2Q
MD:/Document/TMP/BubblePipelineCPU/BubblePipelineCPU.srcs/sources_1/new/test.v2
5848@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
EX2MEM2
 2
02
12Q
MD:/Document/TMP/BubblePipelineCPU/BubblePipelineCPU.srcs/sources_1/new/test.v2
5848@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2

DataMemory2
 2Q
MD:/Document/TMP/BubblePipelineCPU/BubblePipelineCPU.srcs/sources_1/new/test.v2
8278@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

DataMemory2
 2
02
12Q
MD:/Document/TMP/BubblePipelineCPU/BubblePipelineCPU.srcs/sources_1/new/test.v2
8278@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
MEM2WB2
 2Q
MD:/Document/TMP/BubblePipelineCPU/BubblePipelineCPU.srcs/sources_1/new/test.v2
6248@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
MEM2WB2
 2
02
12Q
MD:/Document/TMP/BubblePipelineCPU/BubblePipelineCPU.srcs/sources_1/new/test.v2
6248@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
Mux4__parameterized02
 2Q
MD:/Document/TMP/BubblePipelineCPU/BubblePipelineCPU.srcs/sources_1/new/test.v2
6928@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Mux4__parameterized02
 2
02
12Q
MD:/Document/TMP/BubblePipelineCPU/BubblePipelineCPU.srcs/sources_1/new/test.v2
6928@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
in112
Mux42

CPU_Mux4_22Q
MD:/Document/TMP/BubblePipelineCPU/BubblePipelineCPU.srcs/sources_1/new/test.v2
2868@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2

CPU_Mux4_22
Mux42
62
52Q
MD:/Document/TMP/BubblePipelineCPU/BubblePipelineCPU.srcs/sources_1/new/test.v2
2868@Z8-7023h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
CPU2
 2
02
12Q
MD:/Document/TMP/BubblePipelineCPU/BubblePipelineCPU.srcs/sources_1/new/test.v2
48@Z8-6155h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
A[31]2

DataMemoryZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
A[30]2

DataMemoryZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
A[29]2

DataMemoryZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
A[28]2

DataMemoryZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
A[27]2

DataMemoryZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
A[26]2

DataMemoryZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
A[25]2

DataMemoryZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
A[24]2

DataMemoryZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
A[23]2

DataMemoryZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
A[22]2

DataMemoryZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
A[21]2

DataMemoryZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
A[20]2

DataMemoryZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
A[19]2

DataMemoryZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
A[18]2

DataMemoryZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
A[17]2

DataMemoryZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
A[16]2

DataMemoryZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
A[15]2

DataMemoryZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
A[14]2

DataMemoryZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
A[13]2

DataMemoryZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
A[12]2

DataMemoryZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
A[11]2

DataMemoryZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
A[10]2

DataMemoryZ8-7129h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2
A[9]2

DataMemoryZ8-7129h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2
A[1]2

DataMemoryZ8-7129h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2
A[0]2

DataMemoryZ8-7129h px� 
x
9Port %s in module %s is either unconnected or has no load4866*oasys2
A[1]2
InstructionMemoryZ8-7129h px� 
x
9Port %s in module %s is either unconnected or has no load4866*oasys2
A[0]2
InstructionMemoryZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
	Instr[15]2
HazardZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
	Instr[14]2
HazardZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
	Instr[13]2
HazardZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
	Instr[12]2
HazardZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
	Instr[11]2
HazardZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
	Instr[10]2
HazardZ8-7129h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2

Instr[9]2
HazardZ8-7129h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2

Instr[8]2
HazardZ8-7129h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2

Instr[7]2
HazardZ8-7129h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2

Instr[6]2
HazardZ8-7129h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2

Instr[5]2
HazardZ8-7129h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2

Instr[4]2
HazardZ8-7129h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2

Instr[3]2
HazardZ8-7129h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2

Instr[2]2
HazardZ8-7129h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2

Instr[1]2
HazardZ8-7129h px� 
q
9Port %s in module %s is either unconnected or has no load4866*oasys2

Instr[0]2
HazardZ8-7129h px� 
�
%s*synth2v
tFinished Synthesize : Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 1047.867 ; gain = 548.789
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
Finished Constraint Validation : Time (s): cpu = 00:00:07 ; elapsed = 00:00:07 . Memory (MB): peak = 1047.867 ; gain = 548.789
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
D
%s
*synth2,
*Start Loading Part and Timing Information
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Loading part: xc7a35tcsg324-1
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:07 ; elapsed = 00:00:07 . Memory (MB): peak = 1047.867 ; gain = 548.789
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
D
Loading part %s157*device2
xc7a35tcsg324-1Z21-403h px� 
�
!inferring latch for variable '%s'327*oasys2

Result_reg2Q
MD:/Document/TMP/BubblePipelineCPU/BubblePipelineCPU.srcs/sources_1/new/test.v2
8038@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2
	Equal_reg2Q
MD:/Document/TMP/BubblePipelineCPU/BubblePipelineCPU.srcs/sources_1/new/test.v2
8088@Z8-327h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:07 ; elapsed = 00:00:07 . Memory (MB): peak = 1048.656 ; gain = 549.578
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Detailed RTL Component Info : 
h p
x
� 
(
%s
*synth2
+---Adders : 
h p
x
� 
F
%s
*synth2.
,	   2 Input   32 Bit       Adders := 3     
h p
x
� 
F
%s
*synth2.
,	   3 Input   32 Bit       Adders := 1     
h p
x
� 
+
%s
*synth2
+---Registers : 
h p
x
� 
H
%s
*synth20
.	               32 Bit    Registers := 13    
h p
x
� 
H
%s
*synth20
.	                5 Bit    Registers := 3     
h p
x
� 
H
%s
*synth20
.	                3 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	                2 Bit    Registers := 3     
h p
x
� 
H
%s
*synth20
.	                1 Bit    Registers := 8     
h p
x
� 
'
%s
*synth2
+---Muxes : 
h p
x
� 
F
%s
*synth2.
,	   2 Input   32 Bit        Muxes := 4     
h p
x
� 
F
%s
*synth2.
,	 301 Input   32 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   4 Input   32 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   4 Input    5 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    2 Bit        Muxes := 5     
h p
x
� 
F
%s
*synth2.
,	   5 Input    2 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   3 Input    2 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   5 Input    1 Bit        Muxes := 4     
h p
x
� 
F
%s
*synth2.
,	   2 Input    1 Bit        Muxes := 11    
h p
x
� 
F
%s
*synth2.
,	   3 Input    1 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   4 Input    1 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   6 Input    1 Bit        Muxes := 2     
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Finished RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
p
%s
*synth2X
VPart Resources:
DSPs: 90 (col length:60)
BRAMs: 100 (col length: RAMB18 60 RAMB36 30)
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
E
%s
*synth2-
+Start Cross Boundary and Area Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
CPU_ALU/Result_reg[31]2
CPUZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
CPU_ALU/Result_reg[30]2
CPUZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
CPU_ALU/Result_reg[29]2
CPUZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
CPU_ALU/Result_reg[28]2
CPUZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
CPU_ALU/Result_reg[27]2
CPUZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
CPU_ALU/Result_reg[26]2
CPUZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
CPU_ALU/Result_reg[25]2
CPUZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
CPU_ALU/Result_reg[24]2
CPUZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
CPU_ALU/Result_reg[23]2
CPUZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
CPU_ALU/Result_reg[22]2
CPUZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
CPU_ALU/Result_reg[21]2
CPUZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
CPU_ALU/Result_reg[20]2
CPUZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
CPU_ALU/Result_reg[19]2
CPUZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
CPU_ALU/Result_reg[18]2
CPUZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
CPU_ALU/Result_reg[17]2
CPUZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
CPU_ALU/Result_reg[16]2
CPUZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
CPU_ALU/Result_reg[15]2
CPUZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
CPU_ALU/Result_reg[14]2
CPUZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
CPU_ALU/Result_reg[13]2
CPUZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
CPU_ALU/Result_reg[12]2
CPUZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
CPU_ALU/Result_reg[11]2
CPUZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
CPU_ALU/Result_reg[10]2
CPUZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
CPU_ALU/Result_reg[9]2
CPUZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
CPU_ALU/Result_reg[8]2
CPUZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
CPU_ALU/Result_reg[7]2
CPUZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
CPU_ALU/Result_reg[6]2
CPUZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
CPU_ALU/Result_reg[5]2
CPUZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
CPU_ALU/Result_reg[4]2
CPUZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
CPU_ALU/Result_reg[3]2
CPUZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
CPU_ALU/Result_reg[2]2
CPUZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
CPU_ALU/Result_reg[1]2
CPUZ8-3332h px� 
�
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2
CPU_ALU/Result_reg[0]2
CPUZ8-3332h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:12 ; elapsed = 00:00:12 . Memory (MB): peak = 1232.137 ; gain = 733.059
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
h px� 
l
%s*synth2T
R---------------------------------------------------------------------------------
h px� 
X
%s*synth2@
>
Distributed RAM: Preliminary Mapping Report (see note below)
h px� 
r
%s*synth2Z
X+------------+----------------------+-----------+----------------------+--------------+
h px� 
s
%s*synth2[
Y|Module Name | RTL Object           | Inference | Size (Depth x Width) | Primitives   | 
h px� 
r
%s*synth2Z
X+------------+----------------------+-----------+----------------------+--------------+
h px� 
s
%s*synth2[
Y|CPU         | CPU_RegFile/regs_reg | Implied   | 32 x 32              | RAM32M x 12  | 
h px� 
s
%s*synth2[
Y+------------+----------------------+-----------+----------------------+--------------+

h px� 
�
%s*synth2�
�Note: The table above is a preliminary report that shows the Distributed RAMs at the current stage of the synthesis flow. Some Distributed RAMs may be reimplemented as non Distributed RAM primitives later in the synthesis flow. Multiple instantiated RAMs are reported only once.
h px� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
h px� 
l
%s*synth2T
R---------------------------------------------------------------------------------
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
4
%s
*synth2
Start Timing Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2
}Finished Timing Optimization : Time (s): cpu = 00:00:12 ; elapsed = 00:00:13 . Memory (MB): peak = 1232.137 ; gain = 733.059
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
A
%s
*synth2)
'
Distributed RAM: Final Mapping Report
h p
x
� 
r
%s
*synth2Z
X+------------+----------------------+-----------+----------------------+--------------+
h p
x
� 
s
%s
*synth2[
Y|Module Name | RTL Object           | Inference | Size (Depth x Width) | Primitives   | 
h p
x
� 
r
%s
*synth2Z
X+------------+----------------------+-----------+----------------------+--------------+
h p
x
� 
s
%s
*synth2[
Y|CPU         | CPU_RegFile/regs_reg | Implied   | 32 x 32              | RAM32M x 12  | 
h p
x
� 
s
%s
*synth2[
Y+------------+----------------------+-----------+----------------------+--------------+

h p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
3
%s
*synth2
Start Technology Mapping
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2~
|Finished Technology Mapping : Time (s): cpu = 00:00:12 ; elapsed = 00:00:13 . Memory (MB): peak = 1232.137 ; gain = 733.059
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
-
%s
*synth2
Start IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
?
%s
*synth2'
%Start Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
B
%s
*synth2*
(Finished Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2x
vFinished IO Insertion : Time (s): cpu = 00:00:16 ; elapsed = 00:00:16 . Memory (MB): peak = 1232.137 ; gain = 733.059
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Start Renaming Generated Instances
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:16 ; elapsed = 00:00:16 . Memory (MB): peak = 1232.137 ; gain = 733.059
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start Rebuilding User Hierarchy
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:16 ; elapsed = 00:00:16 . Memory (MB): peak = 1232.137 ; gain = 733.059
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Renaming Generated Ports
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:16 ; elapsed = 00:00:16 . Memory (MB): peak = 1232.137 ; gain = 733.059
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:16 ; elapsed = 00:00:16 . Memory (MB): peak = 1232.137 ; gain = 733.059
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Start Renaming Generated Nets
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:16 ; elapsed = 00:00:16 . Memory (MB): peak = 1232.137 ; gain = 733.059
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Writing Synthesis Report
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
/
%s
*synth2

Report BlackBoxes: 
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
| |BlackBox name |Instances |
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
/
%s*synth2

Report Cell Usage: 
h px� 
4
%s*synth2
+------+---------+------+
h px� 
4
%s*synth2
|      |Cell     |Count |
h px� 
4
%s*synth2
+------+---------+------+
h px� 
4
%s*synth2
|1     |BUFG     |     1|
h px� 
4
%s*synth2
|2     |CARRY4   |    32|
h px� 
4
%s*synth2
|3     |LUT1     |     2|
h px� 
4
%s*synth2
|4     |LUT2     |   100|
h px� 
4
%s*synth2
|5     |LUT3     |   121|
h px� 
4
%s*synth2
|6     |LUT4     |    46|
h px� 
4
%s*synth2
|7     |LUT5     |     8|
h px� 
4
%s*synth2
|8     |LUT6     |    69|
h px� 
4
%s*synth2
|9     |RAM32M   |    10|
h px� 
4
%s*synth2
|10    |RAM32X1D |     4|
h px� 
4
%s*synth2
|11    |FDRE     |   348|
h px� 
4
%s*synth2
|12    |LD       |     1|
h px� 
4
%s*synth2
|13    |IBUF     |     1|
h px� 
4
%s*synth2
|14    |OBUF     |    32|
h px� 
4
%s*synth2
+------+---------+------+
h px� 
3
%s
*synth2

Report Instance Areas: 
h p
x
� 
V
%s
*synth2>
<+------+---------------------+---------------------+------+
h p
x
� 
V
%s
*synth2>
<|      |Instance             |Module               |Cells |
h p
x
� 
V
%s
*synth2>
<+------+---------------------+---------------------+------+
h p
x
� 
V
%s
*synth2>
<|1     |top                  |                     |   775|
h p
x
� 
V
%s
*synth2>
<|2     |  CPU_JumpController |JumpController       |     1|
h p
x
� 
V
%s
*synth2>
<|3     |  CPU_ALU            |ALU                  |    23|
h p
x
� 
V
%s
*synth2>
<|4     |  CPU_EX2MEM         |EX2MEM               |    76|
h p
x
� 
V
%s
*synth2>
<|5     |  CPU_ID2EX          |ID2EX                |   257|
h p
x
� 
V
%s
*synth2>
<|6     |  CPU_IF2ID          |IF2ID                |    70|
h p
x
� 
V
%s
*synth2>
<|7     |  CPU_MEM2WB         |MEM2WB               |    71|
h p
x
� 
V
%s
*synth2>
<|8     |  CPU_Mux2_1         |Mux2                 |    60|
h p
x
� 
V
%s
*synth2>
<|9     |  CPU_Mux2_2         |Mux2_0               |     0|
h p
x
� 
V
%s
*synth2>
<|10    |  CPU_Mux2_3         |Mux2_1               |     0|
h p
x
� 
V
%s
*synth2>
<|11    |  CPU_Mux2_4         |Mux2_2               |    32|
h p
x
� 
V
%s
*synth2>
<|12    |  CPU_Mux2_5         |Mux2__parameterized0 |     0|
h p
x
� 
V
%s
*synth2>
<|13    |  CPU_Mux4_2         |Mux4__parameterized0 |    32|
h p
x
� 
V
%s
*synth2>
<|14    |  CPU_PC             |PC                   |    54|
h p
x
� 
V
%s
*synth2>
<|15    |  CPU_PCAdd4         |PCAdd4               |     8|
h p
x
� 
V
%s
*synth2>
<|16    |  CPU_PCBranch       |PCBranch             |    36|
h p
x
� 
V
%s
*synth2>
<|17    |  CPU_RegFile        |RegFile              |    20|
h p
x
� 
V
%s
*synth2>
<+------+---------------------+---------------------+------+
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:16 ; elapsed = 00:00:16 . Memory (MB): peak = 1232.137 ; gain = 733.059
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
a
%s
*synth2I
GSynthesis finished with 0 errors, 0 critical warnings and 89 warnings.
h p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:16 ; elapsed = 00:00:16 . Memory (MB): peak = 1232.137 ; gain = 733.059
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:16 ; elapsed = 00:00:16 . Memory (MB): peak = 1232.137 ; gain = 733.059
h p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0152

1239.9692
0.000Z17-268h px� 
T
-Analyzing %s Unisim elements for replacement
17*netlist2
47Z29-17h px� 
X
2Unisim Transformation completed in %s CPU seconds
28*netlist2
0Z29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
R
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
12
14Z31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0012

1338.9062
0.000Z17-268h px� 
�
!Unisim Transformation Summary:
%s111*project2�
�  A total of 15 instances were transformed.
  LD => LDCE: 1 instance 
  RAM32M => RAM32M (inverted pins: WCLK) (RAMD32(x6), RAMS32(x2)): 10 instances
  RAM32X1D => RAM32X1D (inverted pins: WCLK) (RAMD32(x2)): 4 instances
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

8340f097Z4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 

G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
582
892
02
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
synth_designZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
synth_design: 2

00:00:182

00:00:182

1338.9062	
850.125Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write ShapeDB Complete: 2

00:00:002
00:00:00.0022

1338.9062
0.000Z17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2J
HD:/Document/TMP/BubblePipelineCPU/BubblePipelineCPU.runs/synth_1/CPU.dcpZ17-1381h px� 
z
%s4*runtcl2^
\Executing : report_utilization -file CPU_utilization_synth.rpt -pb CPU_utilization_synth.pb
h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Tue Jul  2 13:02:27 2024Z17-206h px� 


End Record