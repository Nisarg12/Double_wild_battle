.thumb
.global double_wild_catch_fix
double_wild_catch_fix:
ldr r6, =0x2022b4c
ldr r6, [r6]
cmp r6, #5
bne normal
ldr r6, =0x2023C3C
ldrh r6, [r6, #0x28]
cmp r6, #0
bne case_1

case_2:
mov r0, #3
b back

case_1:
mov r0, #1
b back

normal:
mov r1, #1
eor r0, r1

back:
ldr r6, =0x2023D6C
ldr r1, =0x802d451
bx r1
.ltorg
