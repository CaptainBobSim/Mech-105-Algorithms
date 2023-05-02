sumyi = 9.4;% sum of y values
sumxi = 10; % sum of x values
a1 = 1;  % THERE SHOULD BE A BETTER EQUATION HERE
a0 = -.15

A = (.6-a0-a1*1)^2

B = (2.6-a0-a1*2)^2

C = (2.1-a0-a1*3)^2

D = (4.1-a0-a1*4)^2

ans = A+B+C+D 


ans2 = sqrt(ans/2)