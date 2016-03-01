
org 100h
        
push 0x3
push 0x3
        
call pow    

pop bx
pop bx

ret

pow proc ;function get pow(base,expo) and return base^expo
    
    base equ 4
    expo equ 6
    
    push bp    ;stack frame
    mov bp,sp
    sub sp,0
        
    push cx
    push dx
    push bx
    
    xor cx,cx
    xor ax,ax
         
    mov cx,[bp + expo]
    mov ax,[bp + base]
    mov bx,ax
    
    cmp cx,0           ; if expo is 0 so the pow is 1
    je finish
    dec cx          ; because the "do while" concept we need to decremant cx
    cmp cx,0
    je return_base:
    
    while:
    
        mul bx
    
    loop while 
    
    jmp end
    
    finish:
        mov ax,1
    return_base:
    end:
    pop bx          
    pop cx
    pop dx  ;stack frame exit
    pop bp
    ret





