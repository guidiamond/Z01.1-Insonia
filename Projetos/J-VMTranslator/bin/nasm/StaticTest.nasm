; 0 - PUSH constant 111
leaw $111,%A
movw %A,%D
leaw $SP, %A
movw (%A), %A
movw %D,(%A)
addw %A,$1,%S
leaw $SP, %A
movw %S,(%A)
; 1 - PUSH constant 333
leaw $333,%A
movw %A,%D
leaw $SP, %A
movw (%A), %A
movw %D,(%A)
addw %A,$1,%S
leaw $SP, %A
movw %S,(%A)
; 2 - PUSH constant 888
leaw $888,%A
movw %A,%D
leaw $SP, %A
movw (%A), %A
movw %D,(%A)
addw %A,$1,%S
leaw $SP, %A
movw %S,(%A)
; 3 - POP static 8
leaw $SP, %A
leaw (%A), %A
decw %A
movw (%A), %S
leaw $Static,%A
movw (%A), %D
leaw $8,%A
addw %A, %D, %A
movw %S,(%A)
leaw $SP, %A
leaw (%A), %S
decw %S
movw %S, (%A)
; 4 - POP static 3
leaw $SP, %A
leaw (%A), %A
decw %A
movw (%A), %S
leaw $Static,%A
movw (%A), %D
leaw $3,%A
addw %A, %D, %A
movw %S,(%A)
leaw $SP, %A
leaw (%A), %S
decw %S
movw %S, (%A)
; 5 - POP static 1
leaw $SP, %A
leaw (%A), %A
decw %A
movw (%A), %S
leaw $Static,%A
movw (%A), %D
leaw $1,%A
addw %A, %D, %A
movw %S,(%A)
leaw $SP, %A
leaw (%A), %S
decw %S
movw %S, (%A)
; 6 - PUSH static 3
leaw $SP, %A
movw (%A), %S
leaw $Static, %A
movw (%A), %D
leaw $3 ,%A
addw %A,%D,%A
movw (%A),%D
decw %S
movw %S, %A
movw %D,(%A)
leaw $SP, %A
movw %S,(%A)
; 7 - PUSH static 1
leaw $SP, %A
movw (%A), %S
leaw $Static, %A
movw (%A), %D
leaw $1 ,%A
addw %A,%D,%A
movw (%A),%D
decw %S
movw %S, %A
movw %D,(%A)
leaw $SP, %A
movw %S,(%A)
; 8 - SUB
; 9 - PUSH static 8
leaw $SP, %A
movw (%A), %S
leaw $Static, %A
movw (%A), %D
leaw $8 ,%A
addw %A,%D,%A
movw (%A),%D
decw %S
movw %S, %A
movw %D,(%A)
leaw $SP, %A
movw %S,(%A)
; 10 - ADD
; End
