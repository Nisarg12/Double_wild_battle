.global double_wild_fish_fix
double_wild_fish_fix:
lsr r0, r0, #0x10
ldr r1, =0x2022b4c
mov r2, #0
str r2, [r1]
lsl r1, r0, #2
add r1, r1, r0
lsl r1, r1, #2
ldr r0, =0x8082FC9
bx r0
