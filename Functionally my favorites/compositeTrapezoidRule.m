%Composite Trapezoid Rule Formula
%syms x

f = @(x) -0.055.*x.^4 + 0.86.*x.^3 + -4.2*x.^2 +6.3*x + 2
a = 0;
b = 8;
n = 8; %number of segments
%real = int(f, a, b)


% Computes the definite integral of the function f over the interval [a,b]
% using the composite trapezoid rule with n subintervals.

h = (b - a) / n; % subinterval width
x = linspace(a, b, n+1); % nodes
y = f(x); % function values at the nodes

% Compute the composite trapezoid rule
compTrapezoidRule = h/2 * (y(1) + 2*sum(y(2:end-1)) + y(end))





