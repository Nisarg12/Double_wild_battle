.global skipmsghack
skipmsghack:
push {r1}
ldr r0, =0x203d900
ldrb r1, [r0, #1]
cmp r1, #1
bne NormalCheck2
ldrb r1, [r3] @b_attacker
cmp r1, #0
beq NoString
cmp r1, #2
bne NormalCheck2

NoString:
pop {r1}
mov r1, #0
strb r1, [r0, #1]
ldr r1, =0x2023D74
ldr r0, =0x81D6957
str r0, [r1]
ldr r0, =0x80196B6
mov pc, r0

NormalCheck2:
pop {r1}
mov r0, #8
and r0, r1
cmp r0, #0
beq Nothing
ldr r0, =0x8019692
mov pc, r0

Nothing:
ldr r0, =0x8019946
mov pc, r0
.ltorg
