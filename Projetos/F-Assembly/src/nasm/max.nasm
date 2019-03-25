; Arquivo: Max.nasm
; Curso: Elementos de Sistemas
; Criado por: Luciano Soares 
; Data: 27/03/2017
; Log :
;     - Rafael Corsi portado para Z01

; Calcula R2 = max(R0, R1)  (R0,R1,R2 se referem a  RAM[0],RAM[1],RAM[2])
; ou seja, o maior valor que estiver, ou em R0 ou R1 sera copiado para R2
; Estamos considerando número inteiros

   leaw $0,%A
   movw (%A) , %D           ; D = RAM[0]
   leaw $1,%A              
   subw %D,(%A),%D          ; D = RAM[0] - RAM[1]
   leaw $OUTPUT_FIRST,%A
   jg %D                      ; Salta se D > 0
   nop
   leaw $1,%A
   movw (%A), %S
   leaw $OUTPUT_D,%A
   jmp
   nop
OUTPUT_FIRST:
   leaw $0,%A
   movw (%A),%S
OUTPUT_D:
   leaw $2,%A
   movw %S, (%A)
INFINITE_LOOP:
   leaw $INFINITE_LOOP,%A
   jmp
   nop
