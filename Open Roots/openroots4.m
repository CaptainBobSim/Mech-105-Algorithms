clear; clc;
% Determine the real root of the given function using the secant method
% (three iterations, x–1 = 2.5 and x0 = 3.5). (Round the final answer to
% five decimal places.)
 

fx = @(x) x^3 - 6*x^2 + 11*x -6.1;
dfunc =  @(x) 3*x^2 -12*x + 11
i = 0
x_neg1 = 2.5; %
x_0 = 3.5 %

%% Iteration 1
ximinus1 = x_neg1;
xi = x_0;
%x_1 = xi -  (fxi *(xi-1 - xi))/(fx(xi-1)-fx(xi))
x_1 = xi - (fx(xi) *(ximinus1 - xi))/(fx(ximinus1)-fx(xi))

i = i+1;

%% Iteration 2
ximinus1 = x_0; % initial guess
xi = x_1; % last guess

%x_2 = xi -  (fxi *(xi-1 - xi))/(fx(xi-1)-fx(xi))

x_2 = xi -  (fx(xi) *(ximinus1 - xi))/(fx(ximinus1)-fx(xi))

%% Iteration 3
%x_4 = xi -  (fxi *(xi-1 - xi))/(fx(xi-1)-fx(xi))
ximinus1 = x_1; % initial guess
xi = x_2; % last guess

x_3 = xi -  (fx(xi) *(ximinus1 - xi))/(fx(ximinus1)-fx(xi))
