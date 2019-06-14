; 0 - PUSH constant 17
leaw $17, %A
movw %A,%S
leaw $SP,%A
movw (%A),%A
movw %S,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 1 - PUSH constant 17
leaw $17, %A
movw %A,%S
leaw $SP,%A
movw (%A),%A
movw %S,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 2 - EQ
leaw $SP,%A
movw (%A), %A
decw %A
movw (%A), %D
decw %A
movw (%A), %S
subw %S, %D, %S
movw %A, %D
incw %D
leaw $SP, %A
movw %D, (%A)
leaw $EQStackTest0, %A
je %S
nop
leaw $0, %A
movw %A, %S
leaw $EQ-ENDStackTest0, %A
jmp
nop
EQStackTest0:
leaw $65535, %A
movw %A, %S
EQ-ENDStackTest0:
leaw $SP, %A
movw (%A), %A
decw %A
movw %S, (%A)
; 3 - PUSH constant 17
leaw $17, %A
movw %A,%S
leaw $SP,%A
movw (%A),%A
movw %S,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 4 - PUSH constant 16
leaw $16, %A
movw %A,%S
leaw $SP,%A
movw (%A),%A
movw %S,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 5 - EQ
leaw $SP,%A
movw (%A), %A
decw %A
movw (%A), %D
decw %A
movw (%A), %S
subw %S, %D, %S
movw %A, %D
incw %D
leaw $SP, %A
movw %D, (%A)
leaw $EQStackTest1, %A
je %S
nop
leaw $0, %A
movw %A, %S
leaw $EQ-ENDStackTest1, %A
jmp
nop
EQStackTest1:
leaw $65535, %A
movw %A, %S
EQ-ENDStackTest1:
leaw $SP, %A
movw (%A), %A
decw %A
movw %S, (%A)
; 6 - PUSH constant 16
leaw $16, %A
movw %A,%S
leaw $SP,%A
movw (%A),%A
movw %S,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 7 - PUSH constant 17
leaw $17, %A
movw %A,%S
leaw $SP,%A
movw (%A),%A
movw %S,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 8 - EQ
leaw $SP,%A
movw (%A), %A
decw %A
movw (%A), %D
decw %A
movw (%A), %S
subw %S, %D, %S
movw %A, %D
incw %D
leaw $SP, %A
movw %D, (%A)
leaw $EQStackTest2, %A
je %S
nop
leaw $0, %A
movw %A, %S
leaw $EQ-ENDStackTest2, %A
jmp
nop
EQStackTest2:
leaw $65535, %A
movw %A, %S
EQ-ENDStackTest2:
leaw $SP, %A
movw (%A), %A
decw %A
movw %S, (%A)
; 9 - PUSH constant 892
leaw $892, %A
movw %A,%S
leaw $SP,%A
movw (%A),%A
movw %S,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 10 - PUSH constant 891
leaw $891, %A
movw %A,%S
leaw $SP,%A
movw (%A),%A
movw %S,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 11 - LT
leaw $SP,%A
movw (%A), %A
decw %A
movw (%A), %D
decw %A
movw (%A), %S
subw %S, %D, %S
movw %A, %D
incw %D
leaw $SP, %A
movw %D, (%A)
leaw $LTStackTest3, %A
jl %S
nop
leaw $0, %A
movw %A, %S
leaw $LT-ENDStackTest3, %A
jmp
nop
LTStackTest3:
leaw $65535, %A
movw %A, %S
LT-ENDStackTest3:
leaw $SP, %A
movw (%A), %A
decw %A
movw %S, (%A)
; 12 - PUSH constant 891
leaw $891, %A
movw %A,%S
leaw $SP,%A
movw (%A),%A
movw %S,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 13 - PUSH constant 892
leaw $892, %A
movw %A,%S
leaw $SP,%A
movw (%A),%A
movw %S,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 14 - LT
leaw $SP,%A
movw (%A), %A
decw %A
movw (%A), %D
decw %A
movw (%A), %S
subw %S, %D, %S
movw %A, %D
incw %D
leaw $SP, %A
movw %D, (%A)
leaw $LTStackTest4, %A
jl %S
nop
leaw $0, %A
movw %A, %S
leaw $LT-ENDStackTest4, %A
jmp
nop
LTStackTest4:
leaw $65535, %A
movw %A, %S
LT-ENDStackTest4:
leaw $SP, %A
movw (%A), %A
decw %A
movw %S, (%A)
; 15 - PUSH constant 891
leaw $891, %A
movw %A,%S
leaw $SP,%A
movw (%A),%A
movw %S,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 16 - PUSH constant 891
leaw $891, %A
movw %A,%S
leaw $SP,%A
movw (%A),%A
movw %S,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 17 - LT
leaw $SP,%A
movw (%A), %A
decw %A
movw (%A), %D
decw %A
movw (%A), %S
subw %S, %D, %S
movw %A, %D
incw %D
leaw $SP, %A
movw %D, (%A)
leaw $LTStackTest5, %A
jl %S
nop
leaw $0, %A
movw %A, %S
leaw $LT-ENDStackTest5, %A
jmp
nop
LTStackTest5:
leaw $65535, %A
movw %A, %S
LT-ENDStackTest5:
leaw $SP, %A
movw (%A), %A
decw %A
movw %S, (%A)
; 18 - PUSH constant 32767
leaw $32767, %A
movw %A,%S
leaw $SP,%A
movw (%A),%A
movw %S,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 19 - PUSH constant 32766
leaw $32766, %A
movw %A,%S
leaw $SP,%A
movw (%A),%A
movw %S,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 20 - GT
leaw $SP,%A
movw (%A), %A
decw %A
movw (%A), %D
decw %A
movw (%A), %S
subw %S, %D, %S
movw %A, %D
incw %D
leaw $SP, %A
movw %D, (%A)
leaw $GTStackTest6, %A
jg %S
nop
leaw $0, %A
movw %A, %S
leaw $GT-ENDStackTest6, %A
jmp
nop
GTStackTest6:
leaw $65535, %A
movw %A, %S
GT-ENDStackTest6:
leaw $SP, %A
movw (%A), %A
decw %A
movw %S, (%A)
; 21 - PUSH constant 32766
leaw $32766, %A
movw %A,%S
leaw $SP,%A
movw (%A),%A
movw %S,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 22 - PUSH constant 32767
leaw $32767, %A
movw %A,%S
leaw $SP,%A
movw (%A),%A
movw %S,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 23 - GT
leaw $SP,%A
movw (%A), %A
decw %A
movw (%A), %D
decw %A
movw (%A), %S
subw %S, %D, %S
movw %A, %D
incw %D
leaw $SP, %A
movw %D, (%A)
leaw $GTStackTest7, %A
jg %S
nop
leaw $0, %A
movw %A, %S
leaw $GT-ENDStackTest7, %A
jmp
nop
GTStackTest7:
leaw $65535, %A
movw %A, %S
GT-ENDStackTest7:
leaw $SP, %A
movw (%A), %A
decw %A
movw %S, (%A)
; 24 - PUSH constant 32766
leaw $32766, %A
movw %A,%S
leaw $SP,%A
movw (%A),%A
movw %S,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 25 - PUSH constant 32766
leaw $32766, %A
movw %A,%S
leaw $SP,%A
movw (%A),%A
movw %S,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 26 - GT
leaw $SP,%A
movw (%A), %A
decw %A
movw (%A), %D
decw %A
movw (%A), %S
subw %S, %D, %S
movw %A, %D
incw %D
leaw $SP, %A
movw %D, (%A)
leaw $GTStackTest8, %A
jg %S
nop
leaw $0, %A
movw %A, %S
leaw $GT-ENDStackTest8, %A
jmp
nop
GTStackTest8:
leaw $65535, %A
movw %A, %S
GT-ENDStackTest8:
leaw $SP, %A
movw (%A), %A
decw %A
movw %S, (%A)
; 27 - PUSH constant 57
leaw $57, %A
movw %A,%S
leaw $SP,%A
movw (%A),%A
movw %S,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 28 - PUSH constant 31
leaw $31, %A
movw %A,%S
leaw $SP,%A
movw (%A),%A
movw %S,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 29 - PUSH constant 53
leaw $53, %A
movw %A,%S
leaw $SP,%A
movw (%A),%A
movw %S,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 30 - ADD
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
; 31 - PUSH constant 112
leaw $112, %A
movw %A,%S
leaw $SP,%A
movw (%A),%A
movw %S,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 32 - SUB
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
; 33 - NEG
leaw $SP,%A
movw (%A), %A
decw %A
movw (%A),%D
negw %D
movw %D,(%A)
movw %A, %S
leaw %SP, %A
incw %S
movw %S, (%A)
; 34 - AND
leaw $SP,%A
movw (%A), %A
decw %A
movw (%A), %S
decw %A
movw (%A), %D
andw %D, %S, %S
movw %S, (%A)
movw %A, %D
leaw $SP,%A
incw %D
movw %D, (%A)
; 35 - PUSH constant 82
leaw $82, %A
movw %A,%S
leaw $SP,%A
movw (%A),%A
movw %S,(%A)
leaw $SP,%A
movw (%A),%D
incw %D
movw %D, (%A)
; 36 - OR
leaw $SP,%A
movw (%A), %A
decw %A
movw (%A), %S
decw %A
movw (%A), %D
orw %D, %S, %S
movw %S, (%A)
movw %A, %D
leaw $SP,%A
incw %D
movw %D, (%A)
; 37 - NOT
leaw $SP,%A
movw (%A), %A
decw %A
movw (%A),%D
notw %D
movw %D,(%A)
movw %A, %S
leaw %SP, %A
incw %S
movw %S, (%A)
; End
