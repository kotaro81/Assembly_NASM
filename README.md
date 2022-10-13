# Assembly_NASM


## Registradores de propósito geral:

![Screenshot 2022-08-28 at 00-29-12 AsmNasm pdf](https://user-images.githubusercontent.com/107145843/187056098-7723ba63-5a09-405f-98f5-9aa1c8ecf9fb.png)

![Screenshot 2022-08-28 at 00-34-29 Registradores - Assembly](https://user-images.githubusercontent.com/107145843/187056211-ef47d6a8-24fe-4b00-b869-d050615fbf89.png)




## Tabela BSS:

![Screenshot 2022-08-28 at 00-20-27 AsmNasm pdf](https://user-images.githubusercontent.com/107145843/187055954-b026164b-9b25-4c42-9010-6d3d1123fcb3.png)

## Tabela de definição:

![Screenshot 2022-08-28 at 00-27-20 AsmNasm pdf](https://user-images.githubusercontent.com/107145843/187056078-d2eb4567-2ef4-4744-9168-ba51499ab424.png)

## Compilação:
### Criar arquivo objeto:
nasm -f elf64 -o nome_arquivo.o nome_arquivo.asm

### Linkedição:
ld nome_arquivo.o -o nome_executavel

### Executar:
./nome_executavel
