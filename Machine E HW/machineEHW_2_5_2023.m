%Use zero- through fourth-order Taylor series expansions to predict f(2) for the 
% given function using a base point at x = 1 and compute the true percent relative 
% error εt for each approximation. (Round the estimated values to three decimal places 
% and round the error values to two decimal places.)


x = 2; % This is what we are trying to approx
true_value = log(x);

% Derivatives for ln(x) at x = 1
f0 = 0;
f1 = 1;
f2 = -1;
f3 = 2;
f4 = -6;

%THESE ARE ONLY PART OF THE FACTORIAL YOU NEED TO COMBINE THEM! (approx2
%requires fact0, fact1, and fact2 to be added up
fact0 = ((0/factorial(0))*(x-1)^0);
fact1 = (f1/(factorial(1)*(x-1)^1));
fact2 = (f2/(factorial(2)*(x-1)^2));
fact3 = (f3/(factorial(3)*(x-1)^3));
fact4 = (f4/(factorial(4)*(x-1)^4));

approx0 = fact0
approx1 = fact0+fact1
approx2 = fact0+fact1+fact2
approx3 = fact0+fact1+fact2+fact3
approx4 = fact0+fact1+fact2+fact3+fact4

% The fourth-order Taylor series expansion
approx = log(1) + f1*(x - 1) + f2/2*(x - 1)^2 + f3/6*(x - 1)^3 + f4/24*(x - 1)^4;

% The true percent relative error
%error = abs(100*(approx - true_value)/true_value);
error0 = abs(100*(approx0 - true_value)/true_value);
error1 = abs(100*(approx1 - true_value)/true_value);
error2 = abs(100*(approx2 - true_value)/true_value);
error3 = abs(100*(approx3 - true_value)/true_value);
error4 = abs(100*(approx4 - true_value)/true_value);


fprintf("The fourth-order Taylor series expansion of ln %.0f is %.3f\n", x, approx);
fprintf("The true percent relative error is %.2f%%\n", error);

