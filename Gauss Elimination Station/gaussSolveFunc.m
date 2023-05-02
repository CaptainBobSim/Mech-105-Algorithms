A = [10 2 -1;
    -3 -6 2;
    1 1 5]
b = [27; -61.5; -21.5;]
%function [A, b] = gauss_elimination(A, b)
% Performs Gaussian Elimination on a matrix A with a right-hand side vector b

n = size(A,1); % number of unknowns

for k = 1:n-1
    for i = k+1:n
        factor = A(i,k)/A(k,k);
        for j = k+1:n
            A(i,j) = A(i,j) - factor*A(k,j);
        end
        b(i) = b(i) - factor*b(k);
        A(i,k) = 0;
    end
end
A
b
%end

