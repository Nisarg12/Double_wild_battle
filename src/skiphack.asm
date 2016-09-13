.global skiphack
skiphack:
push {r2}
ldr r0, =0x2022b4c
ldr r0, [r0]
cmp r0, #5
bne NormalCheck
cmp r2, #2
bne NormalCheck
ldr r0, =0x2023FF8
ldrb r0, [r0]
cmp r0, #3
beq SkipCase
ldr r0, =0x20233C4
ldrb r1, [r0]
cmp r1, #0x23
bne NormalCheck
ldrb r0, [r0, #1]
ldr r1, =0x80001C8
ldr r1, [r1]
mov r2, #0x2C
mul r2, r0
add r2, r1, r2
ldrb r2, [r2, #0x1a]
cmp r2, #3
bne NormalCheck

SkipCase:
pop {r2}
ldr r0, =0x203d900
mov r1, #1
strb r1, [r0, #1]
ldr r0, =0x801419C
mov pc, r0

NormalCheck:
pop {r2}
ldr r1, =0x2023BE4
mov r0, #0x58
mul r0, r2
add r1, #0x50
add r0, r0, r1
ldr r1, =0x8014186
mov pc, r1
.ltorg
