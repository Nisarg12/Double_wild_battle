.thumb
.global double_wild_flee_fix
double_wild_flee_fix:
cmp r3, #5
beq .L_1
mov r0, #1
and r3, r0
cmp r3, #0
bne .L_0

.L_1:
ldr r0, =0x801682D
bx r0

.L_0:
ldr r0, =0x801682D
add r0, #0x42
bx r0
.ltorg
