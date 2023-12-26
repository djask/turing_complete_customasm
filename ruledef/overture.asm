#subruledef register
{
  r0 => 0b000 ;immediate
  r1 => 0b001 ;alu i0
  r2 => 0b010 ;alu i1
  r3 => 0b011 ;alu o0
  r4 => 0b100
  r5 => 0b101
  in => 0b110;
  out => 0b110;
}

#subruledef condition
{
  or => 0b000
  nand => 0b001
  nor => 0b010
  and => 0b011
  add => 0b100
  sub => 0b101
}

#ruledef overture
{
  ;misc
  nop => 0x00

  ;immediate
  li {value: u6} => 0b00 @ value

  ; copy
  mov {s: register} {d: register} => 0b10 @ s @ d

  ;compute
  {op: condition} => 0b01 @ 0b000 @ op

  ;condition
  jz   => 0b11 @ 0b000001
  je   => 0b11 @ 0b000001
  jlz  => 0b11 @ 0b000010
  jlez => 0b11 @ 0b000011
  jmp  => 0b11 @ 0b000100
  jne  => 0b11 @ 0b000101
  jgez => 0b11 @ 0b000110
  jgz  => 0b11 @ 0b000111
}
