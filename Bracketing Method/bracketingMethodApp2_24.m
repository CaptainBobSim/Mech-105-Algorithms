[root, fx, ea, iter] = bisect(func, xl, xu, es, maxit);


% Define problem constants
g = 9.81;
mu = 0.55; %mu
F = 150;
m = 25; % mass

format long

% Define the function to be solved for. Angle in degrees.
fx = @(theta) (mu*m*g)/(cosd(theta)+mu*sind(theta))


% THINK, what makes range sense for angle?


% Plot your function. Does plotting give you an idea about where the root is?



% Finaly solve for the root using the bisection script given to you, which can be called as:
%[root, fx, ea, iter] = bisect(func, lower_bound, upper_bound);



% These variables will be checked for your final answer:
%angle =  % the angle in degree that solves this problem
%fx =     % the function value at your solved angle
%ea =     % the bisection error estimate
%iter =   % the number of bisection iterations