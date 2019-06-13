; 0 - PUSH constant 10
leaw $10,%A
movw %A,%D
leaw $SP, %A
movw (%A), %A
movw %D,(%A)
addw %A,$1,%S
leaw $SP, %A
movw %S,(%A)
; 1 - PUSH local 0
leaw $SP, %A
movw (%A), %S
leaw $LCL, %A
movw (%A), %D
movw (%A),%D
decw %S
movw %S, %A
movw %D,(%A)
leaw $SP, %A
movw %S,(%A)
; 2 - POP local 0
leaw $SP, %A
leaw (%A), %A
decw %A
movw (%A), %S
leaw $LCL,%A
movw (%A), %D
movw %S,(%A)
leaw $SP, %A
leaw (%A), %S
decw %S
movw %S, (%A)
; 3 - PUSH constant 21
leaw $21,%A
movw %A,%D
leaw $SP, %A
movw (%A), %A
movw %D,(%A)
addw %A,$1,%S
leaw $SP, %A
movw %S,(%A)
; 4 - PUSH constant 22
leaw $22,%A
movw %A,%D
leaw $SP, %A
movw (%A), %A
movw %D,(%A)
addw %A,$1,%S
leaw $SP, %A
movw %S,(%A)
; 5 - POP argument 2
leaw $SP, %A
leaw (%A), %A
decw %A
movw (%A), %S
leaw $ARG,%A
movw (%A), %D
leaw $2,%A
addw %A, %D, %A
movw %S,(%A)
leaw $SP, %A
leaw (%A), %S
decw %S
movw %S, (%A)
; 6 - POP argument 1
leaw $SP, %A
leaw (%A), %A
decw %A
movw (%A), %S
leaw $ARG,%A
movw (%A), %D
leaw $1,%A
addw %A, %D, %A
movw %S,(%A)
leaw $SP, %A
leaw (%A), %S
decw %S
movw %S, (%A)
; 7 - PUSH constant 36
leaw $36,%A
movw %A,%D
leaw $SP, %A
movw (%A), %A
movw %D,(%A)
addw %A,$1,%S
leaw $SP, %A
movw %S,(%A)
; 8 - POP this 6
leaw $SP, %A
leaw (%A), %A
decw %A
movw (%A), %S
leaw $THIS,%A
movw (%A), %D
leaw $6,%A
addw %A, %D, %A
movw %S,(%A)
leaw $SP, %A
leaw (%A), %S
decw %S
movw %S, (%A)
; 9 - PUSH constant 42
leaw $42,%A
movw %A,%D
leaw $SP, %A
movw (%A), %A
movw %D,(%A)
addw %A,$1,%S
leaw $SP, %A
movw %S,(%A)
; 10 - PUSH constant 45
leaw $45,%A
movw %A,%D
leaw $SP, %A
movw (%A), %A
movw %D,(%A)
addw %A,$1,%S
leaw $SP, %A
movw %S,(%A)
; 11 - POP that 5
leaw $SP, %A
leaw (%A), %A
decw %A
movw (%A), %S
leaw $THAT,%A
movw (%A), %D
leaw $5,%A
addw %A, %D, %A
movw %S,(%A)
leaw $SP, %A
leaw (%A), %S
decw %S
movw %S, (%A)
; 12 - POP that 2
leaw $SP, %A
leaw (%A), %A
decw %A
movw (%A), %S
leaw $THAT,%A
movw (%A), %D
leaw $2,%A
addw %A, %D, %A
movw %S,(%A)
leaw $SP, %A
leaw (%A), %S
decw %S
movw %S, (%A)
; 13 - PUSH constant 510
leaw $510,%A
movw %A,%D
leaw $SP, %A
movw (%A), %A
movw %D,(%A)
addw %A,$1,%S
leaw $SP, %A
movw %S,(%A)
; 14 - POP temp 6
leaw $SP, %A
leaw (%A), %A
decw %A
movw (%A), %S
leaw $Temp,%A
movw (%A), %D
leaw $6,%A
addw %A, %D, %A
movw %S,(%A)
leaw $SP, %A
leaw (%A), %S
decw %S
movw %S, (%A)
; 15 - PUSH local 0
leaw $SP, %A
movw (%A), %S
leaw $LCL, %A
movw (%A), %D
movw (%A),%D
decw %S
movw %S, %A
movw %D,(%A)
leaw $SP, %A
movw %S,(%A)
; 16 - PUSH that 5
leaw $SP, %A
movw (%A), %S
leaw $THAT, %A
movw (%A), %D
leaw $5 ,%A
addw %A,%D,%A
movw (%A),%D
decw %S
movw %S, %A
movw %D,(%A)
leaw $SP, %A
movw %S,(%A)
; 17 - ADD
; 18 - PUSH argument 1
leaw $SP, %A
movw (%A), %S
leaw $ARG, %A
movw (%A), %D
leaw $1 ,%A
addw %A,%D,%A
movw (%A),%D
decw %S
movw %S, %A
movw %D,(%A)
leaw $SP, %A
movw %S,(%A)
; 19 - SUB
; 20 - PUSH this 6
leaw $SP, %A
movw (%A), %S
leaw $THIS, %A
movw (%A), %D
leaw $6 ,%A
addw %A,%D,%A
movw (%A),%D
decw %S
movw %S, %A
movw %D,(%A)
leaw $SP, %A
movw %S,(%A)
; 21 - PUSH this 6
leaw $SP, %A
movw (%A), %S
leaw $THIS, %A
movw (%A), %D
leaw $6 ,%A
addw %A,%D,%A
movw (%A),%D
decw %S
movw %S, %A
movw %D,(%A)
leaw $SP, %A
movw %S,(%A)
; 22 - ADD
; 23 - SUB
; 24 - PUSH temp 6
leaw $SP, %A
movw (%A), %S
leaw $Temp, %A
movw (%A), %D
leaw $6 ,%A
addw %A,%D,%A
movw (%A),%D
decw %S
movw %S, %A
movw %D,(%A)
leaw $SP, %A
movw %S,(%A)
; 25 - ADD
; End
