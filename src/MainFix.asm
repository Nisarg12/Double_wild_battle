@Currently, Fish double is not available.
.thumb
.global double_wild_main_fix
double_wild_main_fix:
lsl r1, r1, #0x18
lsr r1, r1, #0x18
push {r1}
mov r0, r1
lsl r2, r2, #0x18
lsr r2, r2, #0x18
mov r8, r2
push {r0, r1}
mov r0, #6
ldr r1, =0x808C185
bl bx_r1
mov r2, r0
pop {r0, r1}
cmp r2, #2
blt normal_generate
push {r0, r1}
ldr r1, =0x8044EC9
bl bx_r1
mov r2, #255
and r2, r0
pop {r0, r1}
cmp r2, #63
bgt normal_generate
ldr r2, =0x2022B4C
mov r6, #1
str r6, [r2]
mov r6, #0
cmp r1, #1
beq loc_8082B1C
cmp r1, #1
bgt loc_8082B10
cmp r1, #0
beq loc_8082B16
b loc_8082B24

loc_8082B10:
cmp r0, #2
beq loc_8082B1C
b loc_8082B24

loc_8082B16: @grass
ldr r1, =0x808274D
b loc_8082B24

loc_8082B1C: @water
ldr r1, =0x8082809

loc_8082B24: @main
bl bx_r1
lsl r0, r0, #0x18
lsr r6, r0, #0x18
lsl r4, r6, #2
ldr r0, [r7, #4]
add r0, r0, r4
ldr r1, =0x80828F9
bl bx_r1
lsl r0, r0, #0x18
lsr r5, r0, #0x18
mov r0, r8
cmp r0, #1
bne make_second
mov r0, r5
ldr r1, =0x808310D
bl bx_r1
lsl r0, r0, #0x18
cmp r0, #0
beq back_to_make_first

make_second:
ldr r0, [r7, #4]
add r0, r4, r0
ldrh r0, [r0, #2]
mov r1, r5
mov r2, r6
bl wildbattle_pokemon_make_second

back_to_make_first:
pop {r1}
mov r0, r1
ldr r3, =0x8082AFF
bx r3

normal_generate:
pop {r6}
ldr r2, =0x2022B4C
mov r6, #0
str r6, [r2]
ldr r2, =0x8082B01
bx r2
.ltorg

wildbattle_pokemon_make_second:
push {r4-r7, lr}
sub sp ,sp, #0x10
lsl r0, r0, #0x10
lsr r4, r0, #0x10
lsl r1, r1, #0x18
lsr r6, r1, #0x18
lsl r2, r2, #0x18
lsr r5, r2, #0x18
ldr r7, =0x803DA35
bl bx_r7
cmp r4, #0xc9
beq loc_8082A3C
ldr r7, =0x8044EC9
bl bx_r7
lsl r0, r0, #0x10
lsr r0, r0, #0x10
mov r1, #0x19
ldr r7, =0x81E4685
bl bx_r7
lsl r0, r0, #0x18
lsr r0, r0, #0x18
ldr r1, =0x202402C
add r1, #100
str r0, [sp]
mov r0, r1
mov r1, r4
mov r2, r6
mov r3, #0x20
ldr r7, =0x803DD99
bl bx_r7
b loc_8082A74

loc_8082A3C:
ldr r0, =0x3005008
ldr r0, [r0]
ldrb r1, [r0, #5]
sub r1, #0x1B
ldr r2, =0x83CA71C
lsl r1, r1, #0x18
asr r1, r1, #0x18
lsl r0, r1, #1
add r0, r0, r1
lsl r0, r0, #2
add r0, r5, r0
add r0, r0, r2
ldrb r0, [r0]
ldr r7, =0x8082A89
bl bx_r7
ldr r2, =0x202402C
add r2, #100
mov r1, #1
str r1, [sp]
str r0, [sp, #4]
mov r0, #0
str r0, [sp, #8]
str r0, [sp, #0xC]
mov r0, r2
mov r1, #0xC9
mov r2, r6
mov r3, #0x20
ldr r7, =0x803DA55
bl bx_r7

loc_8082A74:
add sp, sp, #0x10
pop {r4-r7, pc}
.ltorg

bx_r1: bx r1
bx_r7: bx r7
