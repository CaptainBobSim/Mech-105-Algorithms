%% My answer
syms t
v1 = 11*t^2-5*t;
a1 = int(v1,0,10);

v2 = 1100 - 5*t;
a2 = int(v2,10,20);

v3 = 50*t + 2*(t-20)^2
a3 = int(v3, 20, 30);

a = a1+a2+a3


% work = force*dist moved




syms t
pcV = @(x) piecewise(0<=t & t<=10, 11*t.^2-5*t, ...
              10<t & t<=20, 1100-5*t, ...
              20<t & t<=30, 50*t+2*(t-20).^2);

quad(pcV,0,30)



% %%GPT answer
% % Define the velocity function
% v = @(t) (t<=10).*4.*t + (t>5).*(20+(5-t).^2    +   (t>5).*(20+(5-t).^2);
% 
% % Define the force and the work integrand
% F = 200;
% work_integrand = @(t) F.*v(t);
% 
% % Compute the work using quad
% work_quad = quad(work_integrand, 0, 15);
% 
% % Compute the work using Romberg numerical integration
% work_romberg = romberg(work_integrand, 0, 15);
% 
% % Display the results
% fprintf('Work using quad: %.4f J\n', work_quad);
% fprintf('Work using Romberg: %.4f J\n', work_romberg);
