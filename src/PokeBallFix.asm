.thumb
.global double_wild_pokeball_fix
double_wild_pokeball_fix:
ldr r1, .battle_flag
ldr r1, [r1]
cmp r1, #5
bne normal
ldr r1, struct
mov r2, #0x58
lsl r2, r2, #1
add r2, r1, r2
ldrh r1, [r1, #0x28]
ldrh r2, [r2, #0x28]
mul r1, r2
cmp r1, #0
bne two_mon

normal:
push {r4, lr}
mov r4, r0
ldr r3, =0x8040F6D
bl bx_r3
ldr r1, .pokeball
bx r1

two_mon:
push {r4, lr}
mov r1, #2
ldr r2, =DoubleWildBallString_bin
ldr r3, .bag_print
ldr r4, .texter
bl jump
pop {r4, pc}
jump: bx r4
bx_r3: bx r3
.ltorg

.align 2
.battle_flag: .word 0x2022B4C
.pokeball:  .word 0x80A1E27
struct: .word 0x2023C3C
.bag_print: .word 0x810a1f9
.texter: .word 0x08108E71
