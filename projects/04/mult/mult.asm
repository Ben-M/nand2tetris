// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// i = 1
  @i
  M=0
// sum = 0
  @R2
  M=0
// LOOP:
(LOOP)
// If i >= R1 goto end BUG HERE
  @i
  D=M
  @R1
  D=M-D
  @END
  D;JLE
// sum += R0
  @R0
  D=M
  @R2
  M=M+D
// i++
  @i
  M=M+1
// GOTO LOOP
  @LOOP
  0;JMP
(END)
  @END
  0;JMP
// END: goto end
