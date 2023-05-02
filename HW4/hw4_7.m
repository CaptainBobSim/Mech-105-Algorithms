%Trevor Olsen HW 4 Problem 7
%2.7.2023

clear; clc; %get me a latte;

%% Context:
%Consider the function f(x) = x^3 – 2x + 4 on the interval [−2, 2] with h = 0.25.
%Use the forward, backward, and centered finite difference approximations for the first derivatives so as to graphically illustrate which approximation is most accurate. 
%We need plots?!

%% Variables
h = 0.25; % Step Size
xValues = [-2:h:2]; % X Array

% woops! exactFunction = xValues.^3 - 2.*xValues + 4; %Exact Value
exactDerivative = 3.*xValues.^2 - 2;

%% Shortcut Variables
xminus1 = xValues - h; %(xi - h) to save typing
xplus1 = xValues + h; %(xi + h) to save typing

xiMinus1 = xminus1.^3 - 2.*xminus1 + 4;
xiPlus1 = xplus1.^3 - 2 .* xplus1 + 4;
fxi = xValues.^3 - 2.*xValues + 4;
exactFunction = xValues.^3 - 2.*xValues + 4; % Glad I didn't delete this! It's the first term.

%% Finites! (Finite differences)
%Forward finite -> (f(xi+1) - f(xi)) / h
forward = (xiPlus1 - fxi)/h;

%Backward finite -> (f(xi) - f(xi-1)) / h
backward = (fxi - xiMinus1)/h;

%Central finite -> (f(xi+1)-f(xi-1)) / h
central = ((xiPlus1 - xiMinus1))/(2*h);

%% Plot it out!

plot(xValues,exactDerivative,'b^--')
hold on
plot (xValues,backward, '-mx')
plot(xValues,forward,'-k+')
plot(xValues,central,'-rs')
legend('Exact', 'Backward', 'Forward','Central')
hold off