%% My answer
syms t
v1 = 4*t;
a1 = 200*int(v1,0,5);

v2 = 20 + (5-t)^2;
a2 = 200*int(v2,5,15);

a = a1+a2


% work = force*dist moved



%%GPT answer
% Define the velocity function
v = @(t) (t<=5).*4.*t + (t>5).*(20+(5-t).^2);

% Define the force and the work integrand
F = 200;
work_integrand = @(t) F.*v(t);

% Compute the work using quad
work_quad = quad(work_integrand, 0, 15);

% Compute the work using Romberg numerical integration
work_romberg = romberg(work_integrand, 0, 15);

% Display the results
fprintf('Work using quad: %.4f J\n', work_quad);
fprintf('Work using Romberg: %.4f J\n', work_romberg);
