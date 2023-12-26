#include "ruledef/overture.asm"

;left wall following

start:
  mov in r4; store current

  ;use action per loop
  li 4
  mov r0 out

check_coins:
  li 8
  mov r0 r1
  mov in r2
  sub
  li move_chkwall
  jne
  li 1
  mov r0 out
  li start
  jmp

move_chkwall:
  ;turn left
  li 0
  mov r0 out

  ;c2 priority: front wall, left wall
  mov r4 r1
  mov in r2
  and
  li move_chkwall_c2
  jgz

  ;c0: front wall, left nothing
  sub
  li move_chkwall_c1
  jgez

  ;c0: front nothing, left wall
  li move_chkwall_c0
  jlz

move_chkwall_c0:
  ;turn back, move 1u
  li 2
  mov r0 out

move_chkwall_c1:
  li 1
  mov r0 out
  li start
  jmp

move_chkwall_c2:
  li 2
  mov r0 out
  li 2
  mov r0 out
  li start
  jmp
