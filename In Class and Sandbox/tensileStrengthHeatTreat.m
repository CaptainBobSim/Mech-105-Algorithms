times = [10,15,20,25,40,50,55,60,75];
tensileStrength = [5,20,18,40,33,54,70,60,78];

%linearregressionplease(times,tensileStrength)

b1 = times\tensileStrength;

sumxi = sum(times); % sum of x values
sumyi = sum(tensileStrength); % sum of y values
sumxiyi = sum(times.*tensileStrength);
n = length(times);

a1 = (n.*sumxiyi-sumxi.*sumyi)/(n.*sum(times.^2)-sumxi.^2);  % THERE SHOULD BE A BETTER EQUATION HERE
a0 = -.15
% 
% A = (.6-a0-a1*1)^2
% 
% B = (2.6-a0-a1*2)^2
% 
% C = (2.1-a0-a1*3)^2
% 
% D = (4.1-a0-a1*4)^2

% ans = A+B+C+D 
% 
% 
% ans2 = sqrt(ans/2)