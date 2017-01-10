;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;Double Wild Battle in Firered;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;Introduction;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
This one is an improved version of the older one posted in pokecommunity. 
But it may still be buggy. :/

;;;;;;;;;;;;;;;;;;;;;;;;;;;;How to Compile?;;;;;;;;;;;;;;;;;;;;;;;;;;;;
To compile this project, you need to install GNU make and DevkitARM, 
and place a bpre0.gba in the extracted folder, and then perform a double 
click on compile.bat/compile.sh. 
A binary of armips (32-bit) v0.8 has been added to this repo. 

;;;;;;;;;;;;;;;;;;;;;;;;;;;;How to Config?;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
1. The free space offset is provided in the 108th line of the file insert.s. 

   For default, the codes will be assembled at 0xF00000. 

2. The chance of triggering a double wild battle is calculated from the 21st 
   line in "src/MainFix.asm", which uses a bitmask so it can easily be changed. 

3. The free RAM space used is 0x203D900, which can be changed in the 2 skip 
   related source files. 

;;;;;;;;;;;;;;;;;;;;;;;;;;;;Special Thanks;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
Against(神sok) for the skip hack in Emerald, please give credit to him if used. 
