; 0 - POP that 0
leaw $SP,%A
movw (%A), %D
decw %D
movw %D, (%A)
movw (%A), %A
movw (%A), %D
leaw $0, %A
movw %A,%S
leaw $THAT,%A
movw (%A),%A
addw %A, %S, %A
movw %D, (%A)
; 1 - POP that 1
leaw $SP,%A
movw (%A), %D
decw %D
movw %D, (%A)
movw (%A), %A
movw (%A), %D
leaw $1, %A
movw %A,%S
leaw $THAT,%A
movw (%A),%A
addw %A, %S, %A
movw %D, (%A)
; 2 - POP that 2
leaw $SP,%A
movw (%A), %D
decw %D
movw %D, (%A)
movw (%A), %A
movw (%A), %D
leaw $2, %A
movw %A,%S
leaw $THAT,%A
movw (%A),%A
addw %A, %S, %A
movw %D, (%A)
; End
