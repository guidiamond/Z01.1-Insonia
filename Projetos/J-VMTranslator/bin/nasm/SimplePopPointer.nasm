; 0 - POP pointer 0
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
; 1 - POP pointer 1
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
; End
