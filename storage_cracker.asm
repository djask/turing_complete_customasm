#include "ruledef/overture.asm"

li 0b111111; something in middle range
mov r0 r4

start:
  mov r4 out

  mov in r3
  li lt
  je
  li gt
  jne

gt:
  mov r4 r1
  li 1
  mov r0 r2
  sub
  mov r3 r4
  li start
  jmp

lt:
  mov r4 r1
  li 1
  mov r0 r2
  add
  mov r3 r4
  li start
  jmp
