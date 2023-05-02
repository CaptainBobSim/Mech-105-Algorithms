x = 2; % The value we want to approximate ln of
true_value = log(x); % The true value of ln x

% The derivatives of ln x at x = 1
f1 = 1;
f2 = -1;
f3 = 2;
f4 = -6;

% The fourth-order Taylor series expansion
approx = log(1) + f1*(x - 1) + f2/2*(x - 1)^2 + f3/6*(x - 1)^3 + f4/24*(x - 1)^4;

% The true percent relative error
error = abs(100*(approx - true_value)/true_value);

fprintf("The fourth-order Taylor series expansion of ln %.0f is %.3f\n", x, approx);
fprintf("The true percent relative error is %.2f%%\n", error);
