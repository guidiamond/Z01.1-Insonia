; 0 - PUSH constant 5
leaw $5, %A
movw %A,%S
leaw $SP,%A
movw (%A),%A
movw %S,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 1 - Goto Incondicional
leaw $SimpleGotoEND2, %A
jmp
nop
; Label (marcador)
SimpleGotoDUMMY:
; 2 - PUSH constant 3
leaw $3, %A
movw %A,%S
leaw $SP,%A
movw (%A),%A
movw %S,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; Label (marcador)
SimpleGotoEND2:
; 3 - POP temp 0
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
