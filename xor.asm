#include "ruledef/overture.asm"

;a ^ b == (a | b)(a !& b)
mov in r1
mov in r2
or
mov r3 r4
nand
mov r3 r1
mov r4 r2
and
mov r3 out
