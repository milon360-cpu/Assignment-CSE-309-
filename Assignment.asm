    .model small
    .stack 100h
    .code
    main proc 

    mov ah,1
    int 21h
    mov bl,al

    mov ah,1
    int 21h
    mov bh,al

    cmp bl,al
    jl level1
    jmp level2

    level1:
    mov ah,2
    mov dl,bl
    int 21h
    jmp level4

    level2:
    mov ah,2
    mov dl,bh
    int 21h
    jmp level3

    level3:
    mov ah,2
    mov dl,bl
    int 21h
    jmp exit

    level4:
    mov ah,2
    mov dl,bh
    int 21h

    exit:
    mov ah,4ch
    main endp 
    end main