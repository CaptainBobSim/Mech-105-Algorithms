clear; clc;
% Determine the real root of the given function using the secant method
% (three iterations, x–1 = 2.5 and x0 = 3.5). (Round the final answer to
% five decimal places.)
 
fx = @(x) x^3 - 6*x^2 + 11*x -6.1;
%dfunc =  @(x) 3*x^2 -12*x + 11
x_0 = 3.5 %
delta = 0.01;

%% Iteration 1
xi = x_0;
%x_1 = xi -  (delta*xi*f(xi))/(fx(xi+delta*xi)-fx(xi))
x_1 = xi - (delta*xi*fx(xi))/(fx(xi+delta*xi)-fx(xi))

%% Iteration 2
xi = x_1; % last guess
x_2 = xi - (delta*xi*fx(xi))/(fx(xi+delta*xi)-fx(xi))

%% Iteration 3
xi = x_2; % last guess
x_3 = xi - (delta*xi*fx(xi))/(fx(xi+delta*xi)-fx(xi))
