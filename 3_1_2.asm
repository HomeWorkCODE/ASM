
org 100h

jmp start    
string1 dw "rtn"
string1Len equ $ - string1-1  ;lenght of string 1
    
string2 dw "ran"
string2Len equ $ - string2-1  ;lenght of string 2


start:
call strcmp

ret

strcmp proc ;will return 1 in ax if equal else 0   
    push si
    push di
    push cx
    push bx
    
    xor ax,ax
    
    mov ax,[string1Len]
    mov bx,[string2Len]
    cmp ax,bx                     ;if diffrent lenght of the strings so they are diffrent
    jne diffrent                  
    lea si,string1
    lea di,string2              
    mov cx,ax
    xor ax,ax
    xor bx,bx
    while:               ; check the strings char by char if equal
        mov ax,[di]
        mov bx,[si]
        cmp ax,bx
        jne diffrent
        inc si
        inc di
    loop while   
    equal:      ;string are equal
        mov ax,1
        jmp finish    
    diffrent:
    mov ax,0
    finish:
    pop bx
    pop cx
    pop di
    pop si
    ret
    








