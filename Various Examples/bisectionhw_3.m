clear; clc; %get in the right head space
%Figure (a) shows a uniform beam subject to a linearly increasing
%distributed load. The equation for the resulting elastic curve, Figure
%(b), is

%Use bisection to determine the point of maximum deflection (i.e., the
%value of x where dy/dx = 0). Use the following parameter values in your
%computation: L = 600 cm, E = 50,000 kN/cm2, I = 30,000 cm4, and w0 = 2.5
%kN/cm. (Round the final answer to four decimal places.)

L = 600; %cm
E = 50,000; %kN/cm2
I = 30,000; %cm4,
w0 = 2.5; %


xl = 0; xu = 599; %lower and upper bound

while (abs((xl-xu)/xl))
fy = @(x) w0/(120*E*I*L)*(-1*x^5+2*L^2*x^3-L^4*x)

dy = (w0)/



%function iterations = bisection_iterations()

% Set initial guesses for temperature
T1 = 0;
T2 = 35;

% Set absolute error tolerance
tolerance = 0.05;

% Set counter for iterations
iterations = 0;

% Use while loop to iterate until absolute error tolerance is met
while abs(T2 - T1) > tolerance
iterations = iterations + 1;
Tmid = (T1 + T2)/2;
osf1 = -139.34411 + (1.57570110^5)/(T1+273.15) - (6.64230810^7)/((T1+273.15)^2) + (1.24380010^10)/((T1+273.15)^3) - (8.62194910^11)/((T1+273.15)^4);
osf2 = -139.34411 + (1.57570110^5)/(T2+273.15) - (6.64230810^7)/((T2+273.15)^2) + (1.24380010^10)/((T2+273.15)^3) - (8.62194910^11)/((T2+273.15)^4);
osfmid = -139.34411 + (1.57570110^5)/(Tmid+273.15) - (6.64230810^7)/((Tmid+273.15)^2) + (1.24380010^10)/((Tmid+273.15)^3) - (8.62194910^11)/((Tmid+273.15)^4);
if osfmid > osf1 && osfmid > osf2
T1 = Tmid;
else
T2 = Tmid;
end
end

iterations = ceil(log2(35/tolerance)); % Round up to nearest integer

%end