%okie let's do this
a = 3.59;
b = 0.0427;
n = 2;
P = 6;
t = 323.15;
R = 0.08206;
deltaX = 10^-6;

xi = 4

f = @(v) ((P+(n^2*a))/(v^2))*(v-n*b)-n*R*t;

%% ITER 1 
%xiplus1 = (deltaX*f(xi))/f(xi+deltaX)-f(xi)

xi = 0;
xiplus1 = (deltaX*f(xi))/f(xi+deltaX)-f(xi)

%% ITER 2
xi = xiplus1;
xiplus2 = (deltaX*f(xi))/f(xi+deltaX)-f(xi)