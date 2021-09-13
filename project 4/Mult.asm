// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
//
// This program only needs to handle arguments that satisfy
// R0 >= 0, R1 >= 0, and R0*R1 < 32768.

// Put your code here.

@i //number of iterations of addition 
M=0
@R2 //variable for storing result
M=0

(LOOP)
	@i
	D=M
	@R1
	D=D-M //iterations subtracted from times multiplied
	@END
	D;JEQ // if equals zero jump to end loop

	@R0
	D=M
	@R2
	M=M+D //adding it the number of times

	@i
	M=M+1// incrementing i

	@LOOP
	0;JMP //unconditional jump to LOOP

(END)
	@END
	0;JMP //END loop to stop the program




