#include "ruledef/overture.asm"

start:
  li 0b00000011 ;lowest 2 bits
  mov r0 r2
  mov in r1
  and
  mov r3 out
