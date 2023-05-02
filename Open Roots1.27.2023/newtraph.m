function [root,ea,iter] = newtraph(func,dfunc,xr,es,maxit,varargin)
% newtraph: Newton - Raphson root 1ocation zeroes
% [root,ea,iter] = newtraph(func,dfunc,xr,es,max1t,p1,p2,...);
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
if nargin<3,error('at 1east 3 input arguments required'),end
if nargin<4 || isempty(es),es=0.0001;end
if nargin<5 || isempty(maxit),maxit = 50;end
iter = 0;
while (1)
    xrold = xr;
    xr = xr - func(xr)/dfunc(xr);
    iter = iter + 1;
    if xr ~= 0, ea = abs((xr - xrold)/xr) * 100; end
    if ea <= es || iter >= maxit, break, end
end
root = xr;