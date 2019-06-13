; Inicialização para VM
leaw $Main.main, %A
jmp
nop
; 1 - PUSH argument 0
leaw $SP, %A
movw (%A), %S
leaw $ARG, %A
movw (%A), %D
movw (%A),%D
decw %S
movw %S, %A
movw %D,(%A)
leaw $SP, %A
movw %S,(%A)
; 2 - POP local 0
leaw $SP, %A
leaw (%A), %A
decw %A
movw (%A), %S
leaw $LCL,%A
movw (%A), %D
movw %S,(%A)
leaw $SP, %A
leaw (%A), %S
decw %S
movw %S, (%A)
; 3 - PUSH argument 1
leaw $SP, %A
movw (%A), %S
leaw $ARG, %A
movw (%A), %D
leaw $1 ,%A
addw %A,%D,%A
movw (%A),%D
decw %S
movw %S, %A
movw %D,(%A)
leaw $SP, %A
movw %S,(%A)
; 4 - POP local 1
leaw $SP, %A
leaw (%A), %A
decw %A
movw (%A), %S
leaw $LCL,%A
movw (%A), %D
leaw $1,%A
addw %A, %D, %A
movw %S,(%A)
leaw $SP, %A
leaw (%A), %S
decw %S
movw %S, (%A)
; 5 - PUSH constant 0
leaw $0,%A
movw %A,%D
leaw $SP, %A
movw (%A), %A
movw %D,(%A)
addw %A,$1,%S
leaw $SP, %A
movw %S,(%A)
; 6 - POP local 2
leaw $SP, %A
leaw (%A), %A
decw %A
movw (%A), %S
leaw $LCL,%A
movw (%A), %D
leaw $2,%A
addw %A, %D, %A
movw %S,(%A)
leaw $SP, %A
leaw (%A), %S
decw %S
movw %S, (%A)
; 7 - PUSH local 0
leaw $SP, %A
movw (%A), %S
leaw $LCL, %A
movw (%A), %D
movw (%A),%D
decw %S
movw %S, %A
movw %D,(%A)
leaw $SP, %A
movw %S,(%A)
; 8 - PUSH local 1
leaw $SP, %A
movw (%A), %S
leaw $LCL, %A
movw (%A), %D
leaw $1 ,%A
addw %A,%D,%A
movw (%A),%D
decw %S
movw %S, %A
movw %D,(%A)
leaw $SP, %A
movw %S,(%A)
; 9 - GT
if-goto $loop.div
goto $end.div
; Label (marcador)
$loop.div
; 10 - PUSH local 0
leaw $SP, %A
movw (%A), %S
leaw $LCL, %A
movw (%A), %D
movw (%A),%D
decw %S
movw %S, %A
movw %D,(%A)
leaw $SP, %A
movw %S,(%A)
; 11 - PUSH local 1
leaw $SP, %A
movw (%A), %S
leaw $LCL, %A
movw (%A), %D
leaw $1 ,%A
addw %A,%D,%A
movw (%A),%D
decw %S
movw %S, %A
movw %D,(%A)
leaw $SP, %A
movw %S,(%A)
; 12 - SUB
; 13 - POP local 0
leaw $SP, %A
leaw (%A), %A
decw %A
movw (%A), %S
leaw $LCL,%A
movw (%A), %D
movw %S,(%A)
leaw $SP, %A
leaw (%A), %S
decw %S
movw %S, (%A)
; 14 - PUSH local 2
leaw $SP, %A
movw (%A), %S
leaw $LCL, %A
movw (%A), %D
leaw $2 ,%A
addw %A,%D,%A
movw (%A),%D
decw %S
movw %S, %A
movw %D,(%A)
leaw $SP, %A
movw %S,(%A)
; 15 - PUSH constant 1
leaw $1,%A
movw %A,%D
leaw $SP, %A
movw (%A), %A
movw %D,(%A)
addw %A,$1,%S
leaw $SP, %A
movw %S,(%A)
; 16 - ADD
; 17 - POP local 2
leaw $SP, %A
leaw (%A), %A
decw %A
movw (%A), %S
leaw $LCL,%A
movw (%A), %D
leaw $2,%A
addw %A, %D, %A
movw %S,(%A)
leaw $SP, %A
leaw (%A), %S
decw %S
movw %S, (%A)
; 18 - PUSH local 0
leaw $SP, %A
movw (%A), %S
leaw $LCL, %A
movw (%A), %D
movw (%A),%D
decw %S
movw %S, %A
movw %D,(%A)
leaw $SP, %A
movw %S,(%A)
; 19 - PUSH constant 1
leaw $1,%A
movw %A,%D
leaw $SP, %A
movw (%A), %A
movw %D,(%A)
addw %A,$1,%S
leaw $SP, %A
movw %S,(%A)
; 20 - LT
if-goto $end.div
goto $loop.div
; Label (marcador)
$end.div
; 21 - PUSH local 2
leaw $SP, %A
movw (%A), %S
leaw $LCL, %A
movw (%A), %D
leaw $2 ,%A
addw %A,%D,%A
movw (%A),%D
decw %S
movw %S, %A
movw %D,(%A)
leaw $SP, %A
movw %S,(%A)
; 24 - PUSH constant 15
leaw $15,%A
movw %A,%D
leaw $SP, %A
movw (%A), %A
movw %D,(%A)
addw %A,$1,%S
leaw $SP, %A
movw %S,(%A)
; 25 - PUSH constant 5
leaw $5,%A
movw %A,%D
leaw $SP, %A
movw (%A), %A
movw %D,(%A)
addw %A,$1,%S
leaw $SP, %A
movw %S,(%A)
; 27 - POP temp 1
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
$while.Main
goto $while.Main
; End
