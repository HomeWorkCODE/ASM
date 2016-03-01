;16-bit operation
org 100h

mov ax,0xDDCC ;put some number here
ror ax,8      ; 8-bit register so we need to rotate the ax 8  times to flip it


ret




