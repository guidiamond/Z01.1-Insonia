; Arquivo: Abs.nasm
; Curso: Elementos de Sistemas
; Criado por: Luciano Soares
; Data: 27/03/2017

; Multiplica o valor de RAM[1] com RAM[0] salvando em RAM[3]

  movw $0, %A, %S, %D
  movw (%A), %D

LOOP:
  leaw $UPDATE, %A
  je %D
  nop

  leaw $1, %A
  movw (%A), %A

  addw %A, %S, %S

  decw %D

  leaw $LOOP, %A
  jmp
  nop

UPDATE:
  leaw $3, %A
  movw %S, (%A)

END:
  leaw $END, %A
  jmp
  nop
