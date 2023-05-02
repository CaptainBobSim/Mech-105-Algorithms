clear; clc; close all;
% Define the matrix A and vector b
A = [13.422   0        0        0;
    -13.422 12.252     0        0;
       0    -12.252  12.377     0;
       0      0      -12.377  11.797];

b = [750.5;
    300;
    102;
    50];


% Calculate the condition number of A using the column-sum norm
cn = norm(A, 1) * norm(inv(A), 1);
cn = round(cn, 4);

% Solve the system of equations using A and b
x = A \ b;

% Calculate the residual
r = b - A * x;

% Find the number of suspect digits generated by the solution
sd = round(-log10(norm(r, 1) / (norm(A, 1) * norm(x, 1))));

% Display the results
fprintf('Condition number: %.4f\n', cn);
fprintf('Number of suspect digits: %d\n', sd);
