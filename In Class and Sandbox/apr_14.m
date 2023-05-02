x = [0:5:30];
F = [ 0 9 13 14 10.5 12 5];
theta = [.5 1.4 .75 .9 1.3 1.48 1.5];
fTheta = F.*cos(theta)
len = length(x)

speyseing = len/n-1

x1 = [x(1) x(end)]
x2 = [x(1) x(speyseing) x(end)]

n = 1



trapz(x1,F)






%%
%Bechara actually knows how to do it....

trapz(x(1) x(end), Ftheta(1) Ftheta(end))

trapz(x(1) x(4) x(end), Ftheta(1) Ftheta(4) Ftheta(end))

%sometimes there are oddities! Sometimes more points coincidentally means
%less accurate!