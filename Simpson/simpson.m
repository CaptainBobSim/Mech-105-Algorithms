clc; clear all;
% This doesn't actually work but it's pretty much clsoe.


%simpson's 1/3 rule

%function [I] = Simpson(x, y)
% Numerical evaluation of integral by Simpson's 1/3 Rule
% Inputs
%   x = the vector of equally spaced independent variable
%   y = the vector of function values with respect to x
% Outputs:
%   I = the numerical integral calculated

%% Define X and Y
% x = [140 141 142 143 144 145 146 147 148 149];
y = [15.59 16.16 15.35 15.13 14.20 14.23 14.29 12.74 14.74 13.68];
%Odd
x = [140 141 142 143 144 145 146 147 148 ] %149];
y = [15.59 16.16 15.35 15.13 14.20 14.23 14.29 12.74 14.74 ]%13.68];
%Odd short
x = [140 141 142]% 143 144]% 145 146 147 148 ] %149];
y = [15 16 17 ]%18  14]% 14.23 14.29 12.74 14.74 ]%13.68];

% %Even short
% x = [140 141 142 143 ]% 145 146 147 148 ] %149];
% y = [15 16 17 16 ]% 14.23 14.29 12.74 14.74 ]%13.68];


%% Initialization Station
a = x(1);
b = x(end);
points = length(x);
n = points - 1; %number of segments

%% CHECKS MIX
%check if it's even, if so we got issues.
iseven = rem(points, 2) == 0; 
if iseven == 1
    warning('even steven is in the house trap rule used for the last one')
    %that odd to make things better
    odds = 3:2:n;
    b = x(end-1);
else
    odds = 3:2:n-1;
end
%check that the spacing is uniform or it'll just ruin everything
if isuniform(x)==0 %mean(dx) ~= 1
    error('you suck and you are terrible just use the same spacing like literally youre the worst')
    % not equally spaced
end
%check some moron didn't have different lengths
if length(x) ~= length(y)
    error('you suck you cant even put in a string the smae length')
end

%% SUMMATION STATION
%sum odd sum even
% Shown above in conditional odds = 3:2:n-1;
yodds = y(odds);
evens = 2:2:n;
yevens = y(evens);

I = ((b-a)* (y(1)+ (4*sum(yodds))+ (2*sum(yevens)) + y(n+1))/(3*n));

if iseven == 1
    fullsend = trapz([y(n),y(n+1)])
    I = I + fullsend
end

Ireal = trapz(x, y)