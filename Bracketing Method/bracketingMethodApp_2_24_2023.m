clear; clc;


% This is some random crap I found online pay no attention.
% function c = bisect(func,xl,xu,es,maxit)%f=@(x)x^2-3; a=1; b=2; (ensure change of sign between a and b) error=1e-4
% c=(xl+xu)/2;
% while abs(func(c))>es
%     if func(c)<0&&func(xl)<0
%         xl=c;
%     else
%         xu=c;
%     end
%     c=(xl+xu)/2;
% end

% Create a MATLAB script that solves for  in degrees when F = 150N. Your
% script should create a plot of a function that is dependent on . Use the
% bisect function in your script file. It is included in Matlab Grader and
% can be called using [root, fx, ea, iter] = bisect(func, xl, xu, es,
% maxit); 
% Where the function inputs and outputs are the same as in the
% false position algorithm. 


% Define problem constants
g = 9.81;
mu = 0.55; %mu
F = 150;
m = 25; % mass

format long

theta = [1:360];
% Define the function to be solved for. Angle in degrees.
func = @(theta) (mu*m*g)./(cosd(theta)+mu.*sind(theta))-150;


% THINK, what makes range sense for angle?
%A Range of 0-360 makes sense for the angles.

% Plot your function. Does plotting give you an idea about where the root is?
plot(theta, func(theta));


% Finaly solve for the root using the bisection script given to you, which can be called as:
%[root, fx, ea, iter] = bisect(func, lower_bound, upper_bound);
xl =  100;
xu = 150;
es = .01; % (percent) %stopping crieria
maxit = 25;
[root, fx, ea, iter] = bisect(func, xl, xu, es, maxit);
%bracketingMethodApp2_24

angle = root;
fx = func

% These variables will be checked for your final answer:
%angle =  % the angle in degree that solves this problem
%fx =     % the function value at your solved angle
%ea =     % the bisection error estimate
%iter =   % the number of bisection iterations


%Finally, your script should include a of
%fprintf statement(s)print out
% the the value selected as the root
fprintf('\nThe value of, after bisection method, theta is %f\n', root);
% how many iterations the method took
fprintf('\nThis took this many iterations: %f\n', iter);
% what the approximate error is
fprintf('\nThe approximate error is: %f\n', ea)
% what f is evaluated at the root. 
fprintf('\nThe value is: %f\n', func(root))
% Use the default values of the function when you can.

