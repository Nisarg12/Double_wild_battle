.thumb
.global double_wild_audio_fix
double_wild_audio_fix:
ldr r0, =0x2022b4c
ldr r0, [r0]
cmp r0, #5
beq double

audio:
ldr r0, =0x137
ldr r1, =0x80722A1
bl jump
ldr r1, =0x8021D4B

jump:
bx r1

double:
ldr r0, =0x2023C3C
mov r1, #0x58
lsl r1, r1, #1
add r1, r0, r1
ldrh r0, [r0, #0x28]
ldrh r1, [r1, #0x28]
add r0, r0, r1
cmp r0, #0
beq audio
ldr r1, =0x8021D4B
add r1, #8
bx r1
.ltorg
