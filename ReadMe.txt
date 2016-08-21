;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;Double Wild Battle in Firered;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;Introduction;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
This one is an improved version of the older one posted in pokecommunity. 
But it may still be buggy. :/

;;;;;;;;;;;;;;;;;;;;;;;;;;;;How to Compile?;;;;;;;;;;;;;;;;;;;;;;;;;;;;
To compile this project, you need to install GNU make and DevkitARM, 
and then perform a double click on compile.bat/compile.sh. 
A binary of armips v0.8 has been added to this repo. (I guess you should have a 64-bit computer)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;How to Config?;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
1. The free space offset is provided in the 88th line of the file insert.s. 
2. The codes assumes that you've expanded the battle script command table, 
   and have the command "callasm" installed. 
   You can define the index of the command in "src/include/battle_script.h". 

   For default, it's 0xF9 instead of 0xF8 as someone may want to port the cmdF8
   in EM to FR. 