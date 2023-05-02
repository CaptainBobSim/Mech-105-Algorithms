%Single Trapezoid Rule Formula
syms x
f = -0.055*x^4 + 0.86*x^3 + -4.2*x^2 +6.3*x + 2
a = 0;
b = 8;
real = int(f, a, b)

x = a;
f_a = subs(f)

x = 8;
f_b = subs(f)

trapezoidRule = (b-a)*((f_a+f_b)/2)




%f(8)
%eq = trapz(-0.055*x^4 + 0.86*x^3 + -4.2*x^2 +6.3*x + 2 , 0 , 8)


