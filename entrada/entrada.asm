;programa que pede uma entrada de nome 

segment .data
    LF          equ 0xA  ;quebra de linha(line feed)
    NULL        equ 0xD  ;final de string
    SYS_EXIT    equ 0x1  ;codigo de chamada para finalizar
    RET_EXIT    equ 0x0  ;operacao realizada com sucesso
    STD_IN      equ 0x0  ;entrada padrao
    STD_OUT     equ 0x1  ;saida padrao
    SYS_READ    equ 0x3  ;operacao de leitura
    SYS_WRITE   equ 0x4  ;operacao de escrita
    SYS_CALL    equ 0x80 ;envia informacao ao SO    


;a intencao aqui é mapear os valores

;constantes
section .data
    msg db "Digite seu nome: ", LF, NULL
    tam equ $- msg

;variaveis
section .bss
    nome resb 1  ;estamos definindo um array "nome" de bytes com 1 elemento(podemos dizer que é uma variavel)


section .text
    

;entrada da informação propriamente dita
global _start
_start:
    ;mostra ao usuario que deve informar um nome
    mov eax, SYS_WRITE
    mov ebx, STD_OUT
    mov ecx , msg
    mov edx, tam
    int SYS_CALL

    mov eax, SYS_READ
    mov ebx, STD_IN
    mov ecx, nome
    mov edx, 0xA ;usuario so pode colocar um nome com 10 caracteres
    int SYS_CALL


saida:
    mov eax, SYS_EXIT
    mov ebx, RET_EXIT
    int SYS_CALL