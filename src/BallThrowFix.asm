.thumb
.global double_wild_ball_throw_fix
double_wild_ball_throw_fix:
ldr r2, =0x02037F1B
ldr r0, =0x02022B4C
ldr r0, [r0]
cmp r0, #5
bne normal
ldr r0, =0x02023C3C
mov r1, #0x58
lsl r1, r1, #1
add r1, r0, r1
ldrh r1, [r1, #0x28]
cmp r1, #0
beq normal
mov r1, #3
strb r1, [r2]

normal:
mov r8, r2
ldr r0, =0x080EF5FB
bx r0
.ltorg
