% HW_0 Fixed Beam

L = 400; %cm;
E = 52000; %kN/cm^2;
I = 32000; %cm^4
w = 4; %kN/cm

x = [0:400]

y = (-w./(48.*E.*I)).*((2*x.^4)-(3*L*x.^3)+(L.^3*x))

%y = (-5.0E-9).*((2.*x.^4)-(3.*L.*x.^3)+(L.^3.*x))


plot(x,y);

maxY = max(abs(y))