;16-bit operation
org 100h

mov ax,5
mov bx,10
mov cx,7

cmp ax,bx      ;if ax>bx so check max between ax,cx else bx,cx
jg ax_bigger
jmp bx_bigger

bx_bigger:
mov ax,bx
jmp final

ax_bigger:
final:                ; check if cx is greated then max(ax,bx) and put the max(cx,max(ax,bx)) in ax.

cmp ax,cx
jg finish
mov ax,cx
finish:

ret




