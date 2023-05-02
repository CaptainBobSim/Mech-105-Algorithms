function [root, fx, ea, iter] = falsePosition(func, xl, xu, es, maxit, varargin)
%falsePosition finds the root of a function using false position method
% [root, fx, ea, iter] = falsePosition(func, xl, xu, es, maxit, varargin)
% Inputs:
%   func = functions make sure to have @(x)
%   xl = lower
%   xu = upper 
%   maxit = max iterations (default 200)
%   varagin = variable length?
% Outputs:
%   root = estimated root
%   fx = function evaluated at the root
%   ea = approximate relative error (%)
%   iter = # of iterations

% %% TEST FUNCTION:
% %comment out maybe?
% testFunc = @(x) x.^2 -.25; % the root for this is pretty clearly x=0
% 
% x_left = -.5;
% x_right = .5;
% maxit = 10;
% 
% [root, fx, ea, iter] = falsePosition(testFunc, x_left, x_right,.001,10)



%% Copy this stuff over to Grader
%function [root, fx, ea, iter] = falsePosition(func, xl, xu, es, maxit, varargin)

% Nargin Input Check because people are stupid and dumb and aparently
% we need to protect them from a bad number of inputs oh well.
if nargin < 3
    error('you peabrain you need at least 3 inupts')
end
if nargin < 4
    es = 0.0001;
end
if nargin < 5
   maxit = 200;
end


% Bracketing Check: If both are positive or both are negative we can't use False Position 
if func(xl) * func(xu) > 0
    error('Choose different bounds, both are on the same side of the endpoint.')
end


% false position form is xr = xu - (f(xu)*(xl-xu)/(f(xl)-f(xu))


%Values
ea = 100; %when you start there's a 100% error
iter = 0; %start the iteration at 0
xr = xl; % we want to compare our later guess to this initial value


while (iter < maxit && ea > es)
   prevXR = xr; 
   % to calculate the error you need to save the preivous guess
   % I did this with this whole funky @$$ matrix thing but that was too
   % much work so I found you could just *Not overwrite* the last root.
   %Ya know save it for a rainy day!


   xr = xu - (func(xu)*(xl-xu))/(func(xl)-func(xu));
   iter = iter + 1;

    % Calculate the approximate relative error
    if xr ~= 0 % prevent div0 error
        ea = abs((xr - prevXR) / xr) * 100;
    end
    
    % Keep the correct interval value
    if func(xr) * func(xl) < 0
        xu = xr;
    elseif func(xr) * func(xu) < 0
        xl = xr;

end

root = xr; %This is the X value of the root.

% Calculate based on root
fx = func(xr); % This is the Y Value of the root.



end
%It's time my dudes!