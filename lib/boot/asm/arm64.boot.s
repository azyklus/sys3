interrupt_vector_table:
   b . @ Reset.
   b .
   b . @ SWI instruction.
   b .
   b .
   b .
   b .
   b .

.comm stack, 0x10000 @ Reserve 64KB stack in the BSS.
_start:
   .globl _start
   ldr sp, =stack+0x10000 @ Set up the stack.
   bl kernel_start @ Jump to our entry

1:
   b 1b @ Halt.
