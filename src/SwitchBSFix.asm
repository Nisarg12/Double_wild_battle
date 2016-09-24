.include "src/include/battle_script.h"
.global double_wild_switch_bs_fix
double_wild_switch_bs_fix:
jumpifword 4 0x2022B4C 8 0x81D86E6
jumpifword 0 0x2022B4C 5 case_double
goto 0x81D86BB

case_double:
jumpifcannotswitch 0xB case_no
goto 0x81D86BB

case_no:
openpartyscreen 0x3 0x81D87B7
cmd51 0x3 0x2
goto 0x81D8792
