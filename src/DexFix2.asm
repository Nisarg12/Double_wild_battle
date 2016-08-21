.thumb
.global double_wild_dex_fix_2
double_wild_dex_fix_2:
ldr r0, =0x0202402C
ldr r1, =0x02023D6C
ldrb r1, [r1]
lsr r1, r1, #1
mov r2, #0x64
mul r1, r2
add r0, r1, r0
mov r1, #0xb
ldr r2, =0x0802D9E1
bx r2
.ltorg
