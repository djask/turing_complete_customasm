# Turing Complete customasm

customasm ruledefs and sample solutions for Turing Complete.

## Generate Commented Code
Use the assemble.py helper script to call `customasm` and process output into commented lines for the assembly editor.
This simplifies in-game debugging of any complex scripts.

```
$ cat xor.asm
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

$ python assemble.py xor.asm
# Generated from customasm xor.asm

0b10110001 # mov in r1
0b10110010 # mov in r2
0b01000000 # or
0b10011100 # mov r3 r4
0b01000001 # nand
0b10011001 # mov r3 r1
0b10100010 # mov r4 r2
0b01000011 # and
0b10011110 # mov r3 out

```
