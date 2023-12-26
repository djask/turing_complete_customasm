#include "ruledef/overture.asm"

start:
  ;if no space rats, go to movement routine
  mov in r1
  li 33 ;id = space rat
  mov r0 r2
  sub
  li move
  jne

  ;shoot id == 33
  li 5
  mov r0 out
  li start
  je

;subroutine: move to location w/ visibility forwards
;very overkill, not needed for this level
move:
  ;empty in front?
  mov in r3
  li 0
  mov r0 r4
  mov r0 r5
  li move_end
  je

  ;choose left as starting
  li 0
  mov r0 r4
  ;store right in r5 to avoid extra conditional
  li 2
  mov r0 r5

move_start:
  ;turn dir, move 1, turn xdir, check ID
  mov r4 out

  mov in r3
  li move_start_c0
  je
  li move_start_c1
move_start_c0:
  li 1
  mov r0 out
  mov r5 out

  li move_end
  jmp
move_start_c1:
  ;we need to reverse, swap directions
  mov r4 r0
  mov r5 r4
  mov r4 r5
  
  li move_start
  jmp

move_end:
  mov r4 r1
  mov r5 r2
  sub
  ;idle
  li 3
  mov r0 out

  li start
  je

  ; walk up after move
  li 1
  mov r0 out

  li start
  jmp
