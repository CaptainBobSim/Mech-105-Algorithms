%Trevor Olsen HW 4 Problem 9
%2.7.2023

clear; clc; %get me a latte;

%% Context:
%Consider the function f(x) = x^3 – 2x + 4 on the interval [−2, 2] with h = 0.25.
%Use the forward, backward, and centered finite difference approximations for the first derivatives so as to graphically illustrate which approximation is most accurate. 
%We need plots?!

%Use the forward, backward, and centered finite difference approximations for the second derivatives so as to graphically illustrate which approximation is most accurate. 



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

xplus2 = xValues + (2*h); %xi + 2h
xminus2 = xValues - (2*h); %xi - 2h


ximinus2 = xminus2.^3 - 2.*xminus2 + 4;
xiplus2 = xplus2.^3 - 2 .* xplus2 + 4;
fxi = xValues.^3 - 2.*xValues + 4;

exact2 = 6.*xValues

%% Finites! (Finite differences)
%Forward finite -> (f(xi+1) - f(xi)) / h
forward = (xiPlus1 - fxi)/h;
forward2 = ((xiplus2 - (2*xiPlus1) + fxi)) / h^2;


%Backward finite -> (f(xi) - f(xi-1)) / h
backward = (fxi - xiMinus1)/h;
backward2 = (fxi - (2*xiMinus1) + ximinus2) / h^2;


%Central finite -> (f(xi+1)-f(xi-1)) / h
central = ((xiPlus1 - xiMinus1))/(2*h);
central2 = (xiPlus1 - (2*fxi) + xiMinus1) / h^2;

%% Plot it out!

plot(xValues,exactDerivative,'b^--')
hold on
plot (xValues,backward2, '-mx')
plot(xValues,forward2,'-k+')
plot(xValues,central2,'-rs')
legend('Exact', 'Backward', 'Forward','Central')
hold off