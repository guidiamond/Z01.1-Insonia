; 0 - POP temp 7
leaw $SP,%A
movw (%A), %D
decw %D
movw %D, (%A)
movw (%A), %A
movw (%A), %D
leaw $7, %A
movw %A, %S
leaw $5, %A
addw %A, %S, %S
movw %S, %A
movw %D, (%A)
; 1 - POP temp 6
leaw $SP,%A
movw (%A), %D
decw %D
movw %D, (%A)
movw (%A), %A
movw (%A), %D
leaw $6, %A
movw %A, %S
leaw $5, %A
addw %A, %S, %S
movw %S, %A
movw %D, (%A)
; 2 - POP temp 5
leaw $SP,%A
movw (%A), %D
decw %D
movw %D, (%A)
movw (%A), %A
movw (%A), %D
leaw $5, %A
movw %A, %S
leaw $5, %A
addw %A, %S, %S
movw %S, %A
movw %D, (%A)
; 3 - POP temp 4
leaw $SP,%A
movw (%A), %D
decw %D
movw %D, (%A)
movw (%A), %A
movw (%A), %D
leaw $4, %A
movw %A, %S
leaw $5, %A
addw %A, %S, %S
movw %S, %A
movw %D, (%A)
; 4 - POP temp 3
leaw $SP,%A
movw (%A), %D
decw %D
movw %D, (%A)
movw (%A), %A
movw (%A), %D
leaw $3, %A
movw %A, %S
leaw $5, %A
addw %A, %S, %S
movw %S, %A
movw %D, (%A)
; 5 - POP temp 2
leaw $SP,%A
movw (%A), %D
decw %D
movw %D, (%A)
movw (%A), %A
movw (%A), %D
leaw $2, %A
movw %A, %S
leaw $5, %A
addw %A, %S, %S
movw %S, %A
movw %D, (%A)
; 6 - POP temp 1
leaw $SP,%A
movw (%A), %D
decw %D
movw %D, (%A)
movw (%A), %A
movw (%A), %D
leaw $1, %A
movw %A, %S
leaw $5, %A
addw %A, %S, %S
movw %S, %A
movw %D, (%A)
; 7 - POP temp 0
leaw $SP,%A
movw (%A), %D
decw %D
movw %D, (%A)
movw (%A), %A
movw (%A), %D
leaw $0, %A
movw %A, %S
leaw $5, %A
addw %A, %S, %S
movw %S, %A
movw %D, (%A)
; End
