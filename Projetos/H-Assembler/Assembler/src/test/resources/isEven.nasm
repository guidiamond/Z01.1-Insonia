; Arquivo: isEven.nasm
; Curso: Elementos de Sistemas
; Criado por: Rafael Corsi
; Data: 28/3/2019
;
; Verifica se o valor salvo no endereço RAM[5] é
; par. Se for verdadeiro, salva 1
; em RAM[0] e 0 caso contrário.

leaw $5, %A
movw (%A), %D
leaw $1, %A
andw %A, %D, %S
leaw $falso, %A
jg %S
nop
verdade:
   movw $1, %S
   leaw $RESULTADO, %A
   movw %S, (%A)
   leaw $end, %A
   jmp
   nop
falso:
   movw $0, %S
   leaw $RESULTADO, %A
   movw %S, (%A)
end:
   leaw $RESULTADO, %A
   movw (%A), %S
   leaw $0, %A
   movw %S, (%A)
