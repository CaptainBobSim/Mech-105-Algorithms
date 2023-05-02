function I = GptSimpson(x,y)
% SIMPSON integrates experimental data using Simpson's 1/3 rule.
%   I = SIMPSON(x,y) computes the definite integral of the vector of function
%   values y with respect to x using Simpson's 1/3 rule. The function checks
%   if there are an odd number of intervals, and if there are, the trapezoidal
%   rule is used for the last interval. The function also checks that the inputs
%   are the same length and that x is equally spaced. If the trapezoidal rule is
%   used on the last interval, the function warns the user.

% Error check that the inputs are the same length.
if length(x) ~= length(y)
    error('Error: x and y must have the same length.')
end

% Error check that x is equally spaced.
if any(diff(x) ~= diff(x(1)))
    error('Error: x must be equally spaced.')
end

% Check if there are an odd number of intervals.
n = length(x);
if mod(n,2) == 0
    warning('Warning: an odd number of intervals is required to use Simpson''s 1/3 rule.')
end

% Initialize the integral value.
I = 0;

% Apply Simpson's 1/3 rule to the first n-2 intervals.
for i = 1:2:n-2
    h = x(i+2) - x(i);
    I = I + h/3 * (y(i) + 4*y(i+1) + y(i+2));
end

% Apply the trapezoidal rule to the last interval if n is odd.
if mod(n,2) == 1
    h = x(n) - x(n-1);
    I = I + h/2 * (y(n-1) + y(n));
    warning('Warning: the trapezoidal rule has been used for the last interval.')
end
end
