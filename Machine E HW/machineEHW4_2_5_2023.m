%If |x|<1  it is known that 
%1/(1−x)= 1 + x + x^2 + x^3....
%Compute the true and approximate percentage relative errors for x = 0.1 at 
% the third derivative of the given series. (Round the true error to two 
% decimal places and the approximate error to six decimal places.)



x = 0.1;
%a = 0.1
true_value = 1/(1-x);
approx = x^0 + x^1 + x^2 + x^3

trueError = approx - true_value
percentError = abs(100*(approx - true_value)/true_value)


% Derivatives for ln(x) at x = 0
f0 = 1.11111; %1
f1 = 1.234567; %1.2345679; %1
f2 = 2.743476 %2.4691358; %2
f3 = 9.144869 %9.14494741; %6



%THESE ARE ONLY PART OF THE FACTORIAL YOU NEED TO COMBINE THEM! (approx2
%requires fact0, fact1, and fact2 to be added up
fact0 = 1;
fact1 = x;
fact2 = x^2;
fact3 = x^3;

approx0 = fact0
approx1 = fact0+fact1
approx2 = fact0+fact1+fact2
approx3 = fact0+fact1+fact2+fact3

% The fourth-order Taylor series expansion
%approx = log(1) + f1*(x - 1) + f2/2*(x - 1)^2 + f3/6*(x - 1)^3 + f4/24*(x - 1)^4;

% The true percent relative error
%error = abs(100*(approx - true_value)/true_value);
error0 = abs(100*(approx0 - true_value)/true_value);
error1 = abs(100*(approx1 - true_value)/true_value);
error2 = abs(100*(approx2 - true_value)/true_value);
error3 = abs(100*(approx3 - true_value)/true_value)
%error4 = abs(100*(approx4 - true_value)/true_value);


%1.11111\dots +1.23456\dots \left(x-0.1\right)+1.37174\dots \left(x-0.1\right)^2+1.52415\dots \left(x-0.1\right)^3
