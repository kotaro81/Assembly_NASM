section .data
  msg db 'Hello World!', 10 ; mensagem para mostrar
  tam equ $- msg ;quantidade de caracteres da mensagem

;seção do programa
section .text

global _start ; marcador inicial

_start:
  mov eax, 4 ;informa que é uma saida
  mov ebx, 1 ; informa que deve ser realizada no terminal
  mov ecx, msg ;conteudo da saida
  mov edx, tam ;quantidade de caracteres
  int 0x80 ;envia informação ao SO

saida:
  mov eax, 1 ;informa que as ações foram terminadas
  mov ebx, 0 ;informa o estado final do programa
  int 0x80   ;envia a informacao ao SO
  

