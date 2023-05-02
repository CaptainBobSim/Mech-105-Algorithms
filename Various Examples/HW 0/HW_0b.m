% HW_0 Fixed Beam

L = 400; %cm;
E = 52000; %kN/cm^2;
I = 32000; %cm^4
w = 4; %kN/cm

y = @(x) -w/48/E/I*(2*x.^4 - 3*L*x.^3 + L^3 *x);

%y = (-w./(48.*E.*I)).*((2*x.^4)-(3*L*x.^3)+(L.^3*x))

%y = (-5.0E-9).*((2.*x.^4)-(3.*L.*x.^3)+(L.^3.*x))

xp = linspace(0,L,1000)
plot(xp,y(xp));
xlabel('Position cm')
ylabel('Deflection cm')
title('Beam Deflection')

%% Problem 3

maxLoc = fminsearch(y,0) %loc of max deflection
deflection =  y(maxLoc)

hold on
plot (maxLoc, deflection, 'r*')
legend('Deflection Curve','Location of Maximum Deflection')
