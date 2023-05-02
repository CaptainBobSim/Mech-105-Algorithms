clear; clc;
% newtraph: Newton - Raphson root 1ocation zeroes
% [root,ea,1ter] = newtraph(func,dfunc,xr,es,max1t,p1,p2,...):
% uses Newton - Raphson method to find the root of func
% input:
% func = name of function
% dfunc = name of derivative of function
% xr = initia] guess
% es = desired re1ative error (defau1t = 0.0001%)
% maxit = maximum a11owab1e iterations (defau1t = 50)
% p1,p2,... = additiona1 parameters used by function
% output:
% root = rea1 root
% ea = approximate re1ative error (%)
% iter = number of iterations


% Determine the real root of the given function using the Newton-Raphson
% method (three iterations, x0 = 3.5). (Round the final answer to five
% decimal places.)
 

%syms x
func = @(x) tanh(x^2-9);
%fx = x^3 - 6*x^2 + 11*x -6.1;
%dfunc = diff(fx);
%dfunc =  @(x) 3*x^2 -12*x + 11
% voodoo magic 1-(tanh(x^2-9))^2
dfunc = @(x) (sech(x^2-9))^2*2*x;
xr = 3.2 %initial guess
es = .0001; %desired re1ative error (defau1t = 0.0001%)
maxit =3; %maximum a11owab1e iterations (defau1t = 50)

[root,ea,iter] = newtraph(func,dfunc,xr,es,maxit);

root =  root
