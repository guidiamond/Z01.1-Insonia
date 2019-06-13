; 0 - POP this 0
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
; 1 - POP this 1
leaw $SP, %A
leaw (%A), %A
decw %A
movw (%A), %S
leaw $THIS,%A
movw (%A), %D
leaw $1,%A
addw %A, %D, %A
movw %S,(%A)
leaw $SP, %A
leaw (%A), %S
decw %S
movw %S, (%A)
; 2 - POP this 2
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
; End
