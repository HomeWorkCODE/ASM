;16-bit operation
org 100h

mov cx,0;put some number here
   
mov ax,cx
xor cx,cx
mov cx,2
     
check:               ;recursive function. check(ax/2)
   cmp ax,1          ;1 is power of 2
   je power_of2
   jb not_a_power_of2;if ax<1 ax is not a power of 2
   div cx
   cmp dx,0          ; equal to ax % 2 
   jne not_a_power_of2 ; if (ax % 2 ) != 0 (the number is not divded by 2) so it is not a power of 2
   jmp check


power_of2:
    mov ax,0
    jmp finish
not_a_power_of2:
    mov ax,0xFFFF
finish:
ret




