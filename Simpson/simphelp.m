clear all; clc;

%% Define X and Y
% x = [140 141 142 143 144 145 146 147 148 149];
y = [15.59 16.16 15.35 15.13 14.20 14.23 14.29 12.74 14.74 13.68];
%Odd
x = [140 141 142 143 144 145 146 147 148 ] %149];
y = [15.59 16.16 15.35 15.13 14.20 14.23 14.29 12.74 14.74 ]%13.68];
%Odd short
x = [140 141 142 143 144]% 145 146 147 148 ] %149];
y = [15 16 17 16 14]% 14.23 14.29 12.74 14.74 ]%13.68];

%Even short
x = [140 141 142 143 ]% 145 146 147 148 ] %149];
y = [15 16 17 16 ]% 14.23 14.29 12.74 14.74 ]%13.68];


n = length(x);

% Apply Simpson's 1/3 rule to the first n-2 intervals.
for i = 1:2:n-2
    h = x(i+2) - x(i);
    I = 0 + h/3 * (y(i) + 4*y(i+1) + y(i+2));
end

% Apply the trapezoidal rule to the last interval if n is odd.
if mod(n,2) == 1
    h = x(n) - x(n-1);
    I = I + h/2 * (y(n-1) + y(n));
    warning('Warning: the trapezoidal rule has been used for the last interval.')
end

