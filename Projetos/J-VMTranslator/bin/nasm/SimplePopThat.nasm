; 0 - POP that 0
leaw $SP, %A
leaw (%A), %A
decw %A
movw (%A), %S
leaw $THAT,%A
movw (%A), %D
movw %S,(%A)
leaw $SP, %A
leaw (%A), %S
decw %S
movw %S, (%A)
; 1 - POP that 1
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
; 2 - POP that 2
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
; End
