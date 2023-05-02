%Romberg
stoppingCriteria = .5

I1 = 2.56 %single iter of trap
I2 = 5.12 %double iter of trap
I4 = 16.32 % h =1/4
I7 = 19.7800 % h = 1/8

I3 = (4/3)*I2-(1/3)*I1


I5 = (4/3)*I4-(1/3)*I2 

I6 = (16/15)*I5-(1/3)*I3
I8 = (4/3)*I7-(1/3)*I4


%estimateError