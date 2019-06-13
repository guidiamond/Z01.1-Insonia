; Inicialização para VM
leaw $Main.main, %A
jmp
nop
; 1 - PUSH constant 15
leaw $15,%A
movw %A,%D
leaw $SP, %A
movw (%A), %A
movw %D,(%A)
addw %A,$1,%S
leaw $SP, %A
movw %S,(%A)
; 2 - PUSH constant 5
leaw $5,%A
movw %A,%D
leaw $SP, %A
movw (%A), %A
movw %D,(%A)
addw %A,$1,%S
leaw $SP, %A
movw %S,(%A)
; 3 - PUSH constant 1
leaw $1,%A
movw %A,%D
leaw $SP, %A
movw (%A), %A
movw %D,(%A)
addw %A,$1,%S
leaw $SP, %A
movw %S,(%A)
; 4 - POP temp 1
leaw $SP, %A
leaw (%A), %A
decw %A
movw (%A), %S
leaw $Temp,%A
movw (%A), %D
leaw $1,%A
addw %A, %D, %A
movw %S,(%A)
leaw $SP, %A
leaw (%A), %S
decw %S
movw %S, (%A)
; Label (marcador)
$subt.Main
; 5 - PUSH temp 1
leaw $SP, %A
movw (%A), %S
leaw $Temp, %A
movw (%A), %D
leaw $1 ,%A
addw %A,%D,%A
movw (%A),%D
decw %S
movw %S, %A
movw %D,(%A)
leaw $SP, %A
movw %S,(%A)
; 6 - PUSH constant 1
leaw $1,%A
movw %A,%D
leaw $SP, %A
movw (%A), %A
movw %D,(%A)
addw %A,$1,%S
leaw $SP, %A
movw %S,(%A)
; 7 - ADD
; 8 - POP temp 1
leaw $SP, %A
leaw (%A), %A
decw %A
movw (%A), %S
leaw $Temp,%A
movw (%A), %D
leaw $1,%A
addw %A, %D, %A
movw %S,(%A)
leaw $SP, %A
leaw (%A), %S
decw %S
movw %S, (%A)
; 9 - SUB
; 10 - POP temp 0
leaw $SP, %A
leaw (%A), %A
decw %A
movw (%A), %S
leaw $Temp,%A
movw (%A), %D
movw %S,(%A)
leaw $SP, %A
leaw (%A), %S
decw %S
movw %S, (%A)
; 11 - PUSH temp 0
leaw $SP, %A
movw (%A), %S
leaw $Temp, %A
movw (%A), %D
movw (%A),%D
decw %S
movw %S, %A
movw %D,(%A)
leaw $SP, %A
movw %S,(%A)
; 12 - PUSH temp 0
leaw $SP, %A
movw (%A), %S
leaw $Temp, %A
movw (%A), %D
movw (%A),%D
decw %S
movw %S, %A
movw %D,(%A)
leaw $SP, %A
movw %S,(%A)
; 13 - PUSH constant 6
leaw $6,%A
movw %A,%D
leaw $SP, %A
movw (%A), %A
movw %D,(%A)
addw %A,$1,%S
leaw $SP, %A
movw %S,(%A)
; 14 - GT
if-goto $subt.Main
; 15 - PUSH temp 1
leaw $SP, %A
movw (%A), %S
leaw $Temp, %A
movw (%A), %D
leaw $1 ,%A
addw %A,%D,%A
movw (%A),%D
decw %S
movw %S, %A
movw %D,(%A)
leaw $SP, %A
movw %S,(%A)
; 16 - POP temp 0
leaw $SP, %A
leaw (%A), %A
decw %A
movw (%A), %S
leaw $Temp,%A
movw (%A), %D
movw %S,(%A)
leaw $SP, %A
leaw (%A), %S
decw %S
movw %S, (%A)
; Label (marcador)
$while.Main
goto $while.Main
; End
