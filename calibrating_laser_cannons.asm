#include "ruledef/overture.asm"

li 6; 2xpi (approximate 3)
mov r0 r4
li mult
jmp

;multiplies value in reg:in by r4
;temp registers:
;r5 - temporary result
;r4 - decremeter
mult:
mult_start:
  ;if r4 is 0 finish
  mov r4 r3 ;multiplier
  li mult_end
  je

  ;out = r1 + r2
  mov r5 r1
  mov in r2
  add
  mov r3 r5

  ;r4 --
  mov r4 r1
  li 1
  mov r0 r2
  sub
  mov r3 r4

  li mult_start
  jmp
mult_end:
  mov r5 out
  nop
