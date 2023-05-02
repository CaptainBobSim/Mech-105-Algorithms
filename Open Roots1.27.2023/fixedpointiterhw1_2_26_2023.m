%
%
%
%
%
%
%
%
%
%
%
%
%
%
%
%
%
%
%
%
%
%
%
%
%
%
%
%
%
%
%
%
%
%
%
%
%
%
%
%


x0 = 0.5;
x = [0:100];
g = @(x) sin(sqrt(x))%-x;
maxit = 100;
es = .01;%


[x1,ea, iter] = fixpt (g,x0, es, maxit)
