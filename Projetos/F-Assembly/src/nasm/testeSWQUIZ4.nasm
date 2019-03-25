  leaw $21185, %A               ; endereça SW
  movw (%A), %D                 ; le valor da chave e salva em %D
  leaw $2, %A                   ; endereça máscara
  andw (%A), %D, %D             ; aplica máscara
  leaw $21184, %A               ; carrega endereço dos LEDs
  movw %D, (%A)                 ; move resultado da mascara para leds
