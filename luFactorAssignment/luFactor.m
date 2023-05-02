clc; clear; close all

% Solve the system of equations in the form A*x = b
%   10*x1 + 2*x2 - x3 = 27
%   -3*x1 - 6*x2 + 2*x3 = -61.5
%   x1 + x2 + 5*x3 = -21.5
% Set up A for the given system
A = [-.5, 2, -1; 
    -3, -6, 2;
    1, 1, 5];

A = magic(7)
% Set up b
% b = [27; -61.5; -21.5];
% % Solve for x
% x = A\b;

% Test your function
%[L, U, P] = luFactor(A)

% How can you test the output of your function is correct?




%function [L, U, P] = luFactor(A)
% luFactor(A)
%	LU decomposition with pivotiing
% inputs:
%	A = coefficient matrix
% outputs:
%	L = lower triangular matrix
%	U = upper triangular matrix
%   P = the permutation matrix

% Develop a MATLAB function that determines the LU Factorization of a
% square matrix. Your algorithm must use partial pivoting.

% For full credit, you must include appropriate error checking. If you are
% confused about what would be appropriate or have questions, feel free to
% come to office hours!

% Inputs:
% A - coefficient matrix
% Outputs:
% L - lower triangular matrix, with 1's along the diagonals
% U - upper triangular matrix
% P - the pivot matrix

% Remember, a correctly solved LU factorization solves for the problem P*A
% = L*U, which is a good check to make sure your solution is correct.
[m,n] = size(A); % m =  row % n = column
if m ~= n, error('Matrix A must be square'); end

% Well crap let's start with pivoting!!
% Switch largest and second largest rows
OrigA = A

% Get the size of the matrix
[m, n] = size(A); %row, column
P = eye(m); %MatLab's just being cute...
L = eye(m,n)
U = A

% % Loop through each column
% for iterRow = 1:m
%     % Get the largest abs value to the top!
%     [~,pivot_row] = max(abs(A(iterRow:m,iterRow)));
%     % Add iterRow-1 to pivot_row because we are only looking at a portion of the matrix
%     pivot_row = pivot_row + iterRow - 1;
% 
%     % Swap the pivot row with the first row
%     A([iterRow,pivot_row],:) = A([pivot_row,iterRow],:);
% %    A_pivot([iterRow pivot_row], :) = A_pivot([pivot_row iterRow], :);
%     P([iterRow pivot_row], :) = P([pivot_row iterRow], :);
%     %ASave = A
% end
% 
% iterRow = 1

%A = OrigA
for iteration = 1:m-1

    % Get the largest abs value to the top!
    [~,pivot_row] = max(abs(A(iteration:m,iteration)));
    % Add iterRow-1 to pivot_row because we are only looking at a portion of the matrix
    pivot_row = pivot_row + iteration - 1;

    % Swap the pivot row with the first row in U and P
    % I used help for this: U([iterRow,pivot_row], iterRow:n) = U([pivot,iteration], iteration:n);
    U([iteration,pivot_row],:) = U([pivot_row,iteration],:);
%    A_pivot([iterRow pivot_row], :) = A_pivot([pivot_row iterRow], :);
    P([iteration pivot_row], :) = P([pivot_row iteration], :);
 

    % Swap rows k and pivot in L (excluding first k-1 columns)
    if iteration > 1
        L([iteration,pivot_row], 1:iteration-1) = L([pivot_row,iteration], 1:iteration-1);
    end

    % Compute multipliers and update U and L
    % f21= A(2,1)/A(1,1) type of deal

    for j = iteration+1:n
        L(j,iteration) = U(j,iteration) / U(iteration,iteration);
        %Subtract the lower rows/back substitiute to solve
        U(j,iteration:n) = U(j,iteration:n) - L(j,iteration) * U(iteration,iteration:n);
    end
end

%This is now pivoted hell yeah.
U
L
% woah did anything change? I don't know!!
P



% Replace the identity rows in A with a matrix of ones
identity_rows = eye(size(A));
L(identity_rows==1) = 1;

 
% f21= A(2,1)/A(1,1)
% %mult first row by factor
% 
% A(1,1:n) = A(1,1:n).*f21


%f31 = A(3,1)/A(1,1)
%f32 = A'(3,2)/A'(2,2)


% Check for a valid matrix
% Check correct output sizes
% Check matrices L and U are triangular
% Check the permutation matrix P is valid
% Correct solution for nice matrix with no pivoting
% Correct solutions for simple matrix
% Correct solutions for hard matrix





%end