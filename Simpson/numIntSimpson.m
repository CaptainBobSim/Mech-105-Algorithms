clc; 
sympref('FloatingPointOutput',true)
format long
syms x
a = 0;
b = 4;
n = 5;
h = (b-a)/n

fx = @(x) 1-exp(-x);
analytical = int(fx,x, a, b)

%real-fake/real

simpsonThird = h/3*(fx(0)+4*fx(2)+fx(4))
simpsonError = ((analytical-simpsonThird)/analytical)*100


% Compute the nodes and weights for the Simpson's rule
x = linspace(a, b, n+1);
w = ones(1, n+1);
w(2:2:n) = 4;
w(3:2:n-1) = 2;

% Compute the width of each subinterval
h = (b - a) / n;

% Compute the nodes and weights for the Simpson's rule
x = linspace(a, b, n+1);
w = ones(1, n+1);
w(2:2:n) = 4;
w(3:2:n-1) = 2;
w = w * h/3;

% Evaluate the function at the nodes and compute the integral
simpsonThirdComp = sum(w .* fx(x))

simpsonErrorComp = ((analytical-simpsonThirdComp)/analytical)*100



x = linspace(a, b, n+1);
w = ones(1, n+1);
w(2:3:n) = 3;
w(4:3:n-1) = 2;
w = w * 3*h/8;

% Evaluate the function at the nodes and compute the integral
simpsonsThreeEight = sum(w .* fx(x))

simpsonThreeEightCompErrorComp = ((analytical-simpsonsThreeEight)/analytical)*100






simpson38 = (b-a)*((fx(a)+3*fx(4/3)+3*fx(8/3)+fx(4))/8)
simpson38ErrorComp = ((analytical-simpson38)/analytical)*100






% ALL TOGETHER NOW!!!

f = fx;

yo = linspace(a, b, n+1)

%% below this is sketchy actually all of this is sketchy

%Yo is shifted off by one it should have 1x5 not 1x6 smh.
h = (yo(2)-0)/2
simp3 = (h/3)*(f(0)+4*f(yo(1))+f(yo(2)))

h = (yo(5)-yo(2))/3
simp38 = ((3*h)/8)*(f(yo(2))+3*f(yo(3))+3*f(yo(4))+f(yo(5)))
bothsimp = simp3+simp38


simpError = ((analytical-bothsimp)/analytical)*100






