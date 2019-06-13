; 0 - PUSH constant 3030
leaw $3030,%A
movw %A,%D
leaw $SP, %A
movw (%A), %A
movw %D,(%A)
addw %A,$1,%S
leaw $SP, %A
movw %S,(%A)
; 1 - POP pointer 0
leaw $SP, %A
leaw (%A), %A
decw %A
movw (%A), %S
leaw $THIS,%A
movw (%A), %D
movw %S,(%A)
leaw $SP, %A
leaw (%A), %S
decw %S
movw %S, (%A)
; 2 - PUSH constant 3040
leaw $3040,%A
movw %A,%D
leaw $SP, %A
movw (%A), %A
movw %D,(%A)
addw %A,$1,%S
leaw $SP, %A
movw %S,(%A)
; 3 - POP pointer 1
leaw $SP, %A
leaw (%A), %A
decw %A
movw (%A), %S
leaw $THAT,%A
movw (%A), %D
leaw $1,%A
addw %A, %D, %A
movw %S,(%A)
leaw $SP, %A
leaw (%A), %S
decw %S
movw %S, (%A)
; 4 - PUSH constant 32
leaw $32,%A
movw %A,%D
leaw $SP, %A
movw (%A), %A
movw %D,(%A)
addw %A,$1,%S
leaw $SP, %A
movw %S,(%A)
; 5 - POP this 2
leaw $SP, %A
leaw (%A), %A
decw %A
movw (%A), %S
leaw $THIS,%A
movw (%A), %D
leaw $2,%A
addw %A, %D, %A
movw %S,(%A)
leaw $SP, %A
leaw (%A), %S
decw %S
movw %S, (%A)
; 6 - PUSH constant 46
leaw $46,%A
movw %A,%D
leaw $SP, %A
movw (%A), %A
movw %D,(%A)
addw %A,$1,%S
leaw $SP, %A
movw %S,(%A)
; 7 - POP that 6
leaw $SP, %A
leaw (%A), %A
decw %A
movw (%A), %S
leaw $THAT,%A
movw (%A), %D
leaw $6,%A
addw %A, %D, %A
movw %S,(%A)
leaw $SP, %A
leaw (%A), %S
decw %S
movw %S, (%A)
; 8 - PUSH pointer 0
leaw $SP, %A
movw (%A), %S
leaw $THIS, %A
movw (%A), %D
movw (%A),%D
decw %S
movw %S, %A
movw %D,(%A)
leaw $SP, %A
movw %S,(%A)
; 9 - PUSH pointer 1
leaw $SP, %A
movw (%A), %S
leaw $THAT, %A
movw (%A), %D
leaw $1 ,%A
addw %A,%D,%A
movw (%A),%D
decw %S
movw %S, %A
movw %D,(%A)
leaw $SP, %A
movw %S,(%A)
; 10 - ADD
; 11 - PUSH this 2
leaw $SP, %A
movw (%A), %S
leaw $THIS, %A
movw (%A), %D
leaw $2 ,%A
addw %A,%D,%A
movw (%A),%D
decw %S
movw %S, %A
movw %D,(%A)
leaw $SP, %A
movw %S,(%A)
; 12 - SUB
; 13 - PUSH that 6
leaw $SP, %A
movw (%A), %S
leaw $THAT, %A
movw (%A), %D
leaw $6 ,%A
addw %A,%D,%A
movw (%A),%D
decw %S
movw %S, %A
movw %D,(%A)
leaw $SP, %A
movw %S,(%A)
; 14 - ADD
; End
