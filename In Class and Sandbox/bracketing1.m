% I'm doing this only because I have to
% Trevor Olsen Mech 105

%where osf  = the saturation concentration of dissolved oxygen in
%freshwater at 1 atm  and  Remember
%that , where T = . According to this
%equation, saturation decreases with increasing temperature. For typical
%natural waters in temperate climates, the equation can be used to
%determine that oxygen concentration ranges from 14.621 mg/L at 0 °C to
%6.949 mg/L at 35 °C. Given a value of oxygen concentration, this formula
%and the bisection method can be used to solve for temperature in °C.


% T = ;%temperature (°C)
% Ta = T + 273.15; %Absolute temperature (K).

%Saturation Concentration of dissolved oxygen in freshwater at 1 atm (mg/L)
%original equation is 
% ln(Osf) =-139.34411 + (1.575701*10^5)/Ta - (6.642308*10^7)/Ta^2 + (1.243800*10^10)/Ta^2 − (8.621949*10^11)/Ta^4
%e both sides to get rid of the ln bastard.
%Osf =exp(-139.34411 + (1.575701*10^5)/Ta - (6.642308*10^7)/Ta^2 + (1.243800*10^10)/Ta^2 - (8.621949*10^11)/Ta^4)

f = @(Ta) exp(-139.34411 + (1.575701*10^5)/Ta - (6.642308*10^7)/Ta^2 + (1.243800*10^10)/Ta^2 - (8.621949*10^11)/Ta^4)



%Initial Guesses
initGuess1 = 0; %C Startpoint
initGuess2 = 35; %C Endpoint
initGuess1K = initGuess1 + 273.15; %K Startpoint
initGuess2K = initGuess2 + 273.15; %K Endpoint


tol = 1e-6; %Tolearance
max_iter = 100; %Woah hold your horses!

%[x, n] = bisection(f, initGuess1K, initGuess2K, tol, max_iter);

%function [x, n] = bisection(f, a, b, tol, max_iter)
% Performs the bisection algorithm to find a root of the function f
% within the interval [a, b], with a tolerance of tol and a maximum
% number of iterations of max_iter.

fa = f(initGuess1K);
fb = f(initGuess2K);
% if sign(fa) == sign(fb)
%     error('f(initGuess1K) and f(initGuess2K) must have opposite signs.')
% end

n = 0;
while n < max_iter
    c = (initGuess1K + initGuess2K) / 2;
    fc = f(c);
    if abs(fc) < tol
        break
    end
    if sign(fa) == sign(fc)
        initGuess1K = c;
        fa = fc;
    else
        initGuess2K = c;
        fb = fc;
    end
    n = n + 1;
end

x = c;
xkelvin = c -273.15
%end

