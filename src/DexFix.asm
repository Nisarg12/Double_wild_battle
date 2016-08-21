.thumb
.global double_wild_dex_fix
double_wild_dex_fix:
push {r4, r5, lr}
ldr r4, =0x0202402C
ldr r0, =0x02023D6C
ldrb r0, [r0]
lsr r0, r0, #1
mov r1, #0x64
mul r0, r1
add r0, r0, r4
add r4, r0, #0
mov r1, #0xb
ldr r2, =0x0802D965
bx r2
.ltorg
