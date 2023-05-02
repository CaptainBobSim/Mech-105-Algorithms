clc; 
sympref('FloatingPointOutput',true)
format
%syms x
a = 0;
b = 4;
n = 4;
h = (b-a)/n

fx = @(x) 1-exp(-x);
analytical = int(fx,x, a, b)

trapSingle = (b-a)*(fx(a)+fx(b))/2

%real-fake/real

singleError = (trapSingle-analytical)/analytical


compTrap = (b-a)*((fx(a)+(2*symsum(fx,x,1,n-1))+fx(n*b))/(2*n))

%n=2
compTrap = (h/2)*(fx(0)+2*fx(2)+fx(4))

%n=4
compTrap = (h/2)*(fx(0)+2*(fx(1)+fx(2)+fx(3))+fx(4))

%trapz(1-exp(-x),2)

fx(2)
symsum(fx,x,1,n-1)


compositeError = ((analytical-compTrap)/analytical)*100






