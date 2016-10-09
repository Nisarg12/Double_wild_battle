.gba
.thumb
.open "bpre0.gba", 0x8000000
;remove the stupid limiter
.org 0x807F760
.byte 0,0
;misc fixes
.org 0x802D812
.byte 0,0
.org 0x802D858
.byte 0,0
.org 0x802D8A6
.byte 0,0
.org 0x802D8F4
.byte 1,0x1C
.org 0x802DF36
.byte 8,0x1C
.org 0x802DE58
.byte 0,0
.org 0x802DE84
.byte 0,0
.org 0x802DEA4
.byte 0,0
.org 0x802DEC2
.byte 4,0x1C
.org 0x802D874
.word 0x2023D6C
.org 0x802D94C
.word 0x2023D6C
.org 0x802DF64
.word 0x2023D6C
.org 0x802DF04
.word 0x2023D6C
;flee fix
.org 0x8016824
ldr r0, =double_wild_flee_fix+1
bx r0
.pool
;audio fix
.org 0x8021D46
.byte 0,0x47
.org 0x8021D94
.word double_wild_audio_fix+1
;pokemon catch
.org 0x802D44C
.byte 0x30,0x47
.org 0x802D480
.word double_wild_catch_fix+1
;dex fix
.org 0x802D95C
ldr r0, =double_wild_dex_fix+1
bx r0
.pool
;dex fix 2
.org 0x802D9DE
.byte 0,0x47
.org 0x802DA00
.word double_wild_dex_fix_2+1
;ball throw fix
.org 0x80EF5F8
.byte 0x10,0x47
.org 0x80EF680
.word double_wild_ball_throw_fix+1
;pokeball fix
.org 0x80A1E1C
ldr r1, =double_wild_pokeball_fix+1
bx r1
.pool
;main func for normal RAND wildbattle
.org 0x8082AF4
ldr r3, =double_wild_main_fix+1
bx r3
.pool
;my fault: the pure function deactivation
.org 0x8082A0C
.word 0
;fade fix
.org 0x8011D72
mov r0, #0xA
lsl r0, r0, #0x10
.org 0x8011DFE
mov r0, #0xA
lsl r0, r0, #0x10
;switch battle script fix
.org 0x81D86AD
.byte 0x28
.word double_wild_switch_bs_fix
;skip fix
.org 0x801417E
mov pc, r1
lsl r0, r0, #0
lsl r0, r0, #0
lsl r0, r0, #0
.org 0x80141B0
.word skiphack
.org 0x8019688
ldr r0, =skipmsghack
mov r15, r0
.pool
;shiny fix
.org 0x8036082
.halfword 0,0,0,0,0,0,0
.org 0x8F00000
.importobj "build/linked.o"
.close