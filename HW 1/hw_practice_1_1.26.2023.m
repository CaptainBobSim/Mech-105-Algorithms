% Function parameters
q0 = 10;
R = 60;
L = 9;
C = 0.00005;

% Use linspace to create an array of 100 points between 0 and 0.8
t = 

% Calculate the values of q
q = 

% Plot q vs t

% Make the capacitor 10x bigger
q2 = 

% Plot q2 vs t


q(t) = @t q0*e^(-R*t/2*L)*cos(sqrt(1/L*C-(R/2*L)^2*t))