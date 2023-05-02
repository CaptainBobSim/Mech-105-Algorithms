clear; clc; close all;
A = [-.5, 2, -1; 
    -3, -6, 2;
    1, 1, 5];


%function [L, U, P] = lu_factorization(A)




% Perform LU factorization with partial pivoting on matrix A
% Returns the lower triangular matrix L, upper triangular matrix U, and permutation matrix P

% Get the size of the matrix A
[m,n] = size(A); % m =  row % n = column
if m ~= n, error('Matrix A must be square'); end

% Initialize L as identity matrix and U as A
L = eye(n);
U = A;

% Initialize P as identity matrix
P = eye(n);

% Iterate over each column of U
for iteration = 1:n-1
    
    % Find the pivot row
    [~, pivot] = max(abs(U(iteration:n, iteration)));
    pivot = pivot + iteration - 1;

    % Swap rows k and pivot in U and P
    U([iteration,pivot], iteration:n) = U([pivot,iteration], iteration:n);
    P([iteration,pivot], :) = P([pivot,iteration], :);

    % Swap rows k and pivot in L (excluding first k-1 columns)
    if iteration > 1
        L([iteration,pivot], 1:iteration-1) = L([pivot,iteration], 1:iteration-1);
    end

    % Compute multipliers and update U and L
    for j = iteration+1:n
        L(j,iteration) = U(j,iteration) / U(iteration,iteration);
        U(j,iteration:n) = U(j,iteration:n) - L(j,iteration) * U(iteration,iteration:n);
    end
    
end

L

U

P