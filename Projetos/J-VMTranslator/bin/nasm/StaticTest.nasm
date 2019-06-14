; 0 - PUSH constant 111
leaw $111, %A
movw %A,%S
leaw $SP,%A
movw (%A),%A
movw %S,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 1 - PUSH constant 333
leaw $333, %A
movw %A,%S
leaw $SP,%A
movw (%A),%A
movw %S,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 2 - PUSH constant 888
leaw $888, %A
movw %A,%S
leaw $SP,%A
movw (%A),%A
movw %S,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 3 - POP static 8
leaw $SP,%A
movw (%A), %D
decw %D
movw %D, (%A)
movw (%A), %A
movw (%A), %D
leaw $StaticTest8,%A
movw %D,(%A)
; 4 - POP static 3
leaw $SP,%A
movw (%A), %D
decw %D
movw %D, (%A)
movw (%A), %A
movw (%A), %D
leaw $StaticTest3,%A
movw %D,(%A)
; 5 - POP static 1
leaw $SP,%A
movw (%A), %D
decw %D
movw %D, (%A)
movw (%A), %A
movw (%A), %D
leaw $StaticTest1,%A
movw %D,(%A)
; 6 - PUSH static 3
leaw $StaticTest3, %A
movw (%A),%D
leaw $SP, %A
movw (%A), %A
movw %D, (%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 7 - PUSH static 1
leaw $StaticTest1, %A
movw (%A),%D
leaw $SP, %A
movw (%A), %A
movw %D, (%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 8 - SUB
leaw $SP,%A
movw (%A), %A
decw %A
movw (%A), %S
decw %A
movw (%A), %D
subw %D, %S, %S
movw %S, (%A)
movw %A, %D
leaw $SP,%A
incw %D
movw %D, (%A)
; 9 - PUSH static 8
leaw $StaticTest8, %A
movw (%A),%D
leaw $SP, %A
movw (%A), %A
movw %D, (%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 10 - ADD
leaw $SP,%A
movw (%A), %A
decw %A
movw (%A), %S
decw %A
movw (%A), %D
addw %S, %D, %S
movw %S, (%A)
movw %A, %D
leaw $SP,%A
incw %D
movw %D, (%A)
; End
