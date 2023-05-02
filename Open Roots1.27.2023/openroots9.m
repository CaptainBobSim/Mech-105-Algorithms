% Calculus can be employed to solve this equation for the height of the
% cable y as a function of distance x:

w = 10; %
y0  = 4; %
%TA = ; %
y = 15;
x = 50;

x = 1:100000;

%y = (TA/w) * cosh((w/TA)*x) + y0 - (TA/w)
fx = (TA/w) * cosh((w/TA)*x) + y0 - (TA/w) - y

% Use a numerical method to calculate a value for the parameter TA given
% values for the parameters w = 10 and y0 = 4, such that the cable has a
% height of y = 15 at x = 50.


x = fzero(fx,x0)

plot(x,fx(x))

%height of y = 15 at x = 50
