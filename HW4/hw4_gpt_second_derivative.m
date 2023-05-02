function [y1, y2] = hw4_gpt_second_derivative(x, h)
    f = @(x) 23*x^3 - 6*x^2 + 7*x - 88; % Define the function
    y1 = (f(x + h) - 2*f(x) + f(x - h)) / (h^2); % O(h^2) approximation
    y2 = (f(x + 2*h) - 2*f(x) + f(x - 2*h)) / (4*h^2); % O(h^2) approximation
end

% Evaluation at x = 2 using step sizes of h = 0.2 and 0.1
[y1_h_0p2, y2_h_0p2] = second_derivative(2, 0.2);
[y1_h_0p1, y2_h_0p1] = second_derivative(2, 0.1);

% Round the final answers to the nearest whole numbers
y1_h_0p2 = round(y1_h_0p2);
y2_h_0p2 = round(y2_h_0p2);
y1_h_0p1 = round(y1_h_0p1);
y2_h_0p1 = round(y2_h_0p1);

fprintf('Second derivative using h = 0.2: %d (O(h^2))\n', y1_h_0p2);
fprintf('Second derivative using h = 0.2: %d (O(h^4))\n', y2_h_0p2);
fprintf('Second derivative using h = 0.1: %d (O(h^2))\n', y1_h_0p1);
fprintf('Second derivative using h = 0.1: %d (O(h^4))\n', y2_h_0p1);
