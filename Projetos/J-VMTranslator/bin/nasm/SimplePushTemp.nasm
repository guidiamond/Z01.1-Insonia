; 0 - PUSH temp 0
leaw $0, %A
movw %A, %S
leaw $5, %A
addw %A, %S, %S
movw %S, %A
movw (%A), %S
leaw $SP, %A
movw (%A), %A
movw %S, (%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 1 - PUSH temp 1
leaw $1, %A
movw %A, %S
leaw $5, %A
addw %A, %S, %S
movw %S, %A
movw (%A), %S
leaw $SP, %A
movw (%A), %A
movw %S, (%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 2 - PUSH temp 2
leaw $2, %A
movw %A, %S
leaw $5, %A
addw %A, %S, %S
movw %S, %A
movw (%A), %S
leaw $SP, %A
movw (%A), %A
movw %S, (%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 3 - PUSH temp 3
leaw $3, %A
movw %A, %S
leaw $5, %A
addw %A, %S, %S
movw %S, %A
movw (%A), %S
leaw $SP, %A
movw (%A), %A
movw %S, (%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 4 - PUSH temp 4
leaw $4, %A
movw %A, %S
leaw $5, %A
addw %A, %S, %S
movw %S, %A
movw (%A), %S
leaw $SP, %A
movw (%A), %A
movw %S, (%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 5 - PUSH temp 5
leaw $5, %A
movw %A, %S
leaw $5, %A
addw %A, %S, %S
movw %S, %A
movw (%A), %S
leaw $SP, %A
movw (%A), %A
movw %S, (%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 6 - PUSH temp 6
leaw $6, %A
movw %A, %S
leaw $5, %A
addw %A, %S, %S
movw %S, %A
movw (%A), %S
leaw $SP, %A
movw (%A), %A
movw %S, (%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 7 - PUSH temp 7
leaw $7, %A
movw %A, %S
leaw $5, %A
addw %A, %S, %S
movw %S, %A
movw (%A), %S
leaw $SP, %A
movw (%A), %A
movw %S, (%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; End
