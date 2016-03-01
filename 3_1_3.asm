
org 100h

mov ax,100
call fibon
ret

fibon proc                 ;will get in ax n and return the n's value in fibonachi
    push bx ;n's number
    push cx ;n
    push dx ;n-2
            ;ax -> n-1      
    xor bx,bx
    xor cx,cx
    xor dx,dx
    
    mov cx,ax
    
        
    xor ax,ax
    mov ax,1
    mov dx,1
     
    cmp cx,2
    jle finish
    
    dec cx
    dec cx

    
    while:
        push ax
        xor bx,bx    ; do (n-1) + (n-2) 
        add bx,ax
        add bx,dx
        mov ax,bx
        pop dx
        
    loop while
    mov ax,bx
    
    finish:
    pop dx
    pop cx
    pop bx
    
    ret





