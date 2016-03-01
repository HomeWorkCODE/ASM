;16-bit operation
org 100h

mov cx,100
xor ax,ax


sum1_100:    

add ax,cx     ;sum all numbers between 1-100

loop sum1_100

ret




