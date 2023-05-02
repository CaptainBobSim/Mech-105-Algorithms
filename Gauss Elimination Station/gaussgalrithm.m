%Gaussgorithm

A = [10 2 -1;
    -3 -6 2;
    1 1 5]
b = [27; -61.5; -21.5;]

f21=A(2,1)/A(1,1)
f31 = A(3,1)/A(1,1)
f32 = A(3,2)/A(2,2)

% Perform Gaussian elimination on the system Ax = b.
% Input: A (n x n matrix), b (n x 1 column vector)
% Output: A (upper triangular matrix), b (modified column vector)
    
[n, ~] = size(A);
    
    for iter = 1:n-1
        % Find the row with the maximum absolute value in the ith column
        [~, pivot_row] = max(abs(A(iter:n, iter)));
        pivot_row = pivot_row + iter - 1;
        
        % Swap the rows if necessary
        if pivot_row ~= iter
            A([iter,pivot_row], :) = A([pivot_row,iter], :);
            b([iter,pivot_row]) = b([pivot_row,iter]);
        end
        
        % Eliminate the ith variable from all subsequent rows
        A
        b
        for j = iter+1:n
            factor = A(j,iter) / A(iter,iter);
            A(j,iter:n) = A(j,iter:n) - factor * A(iter,iter:n);
            b(j) = b(j) - factor * b(iter);
        end
    end


%[L, U] = lu(A)
%x = U \ (L \ b);

y = L\(P*b);
x = U\y

dA = decomposition(A,'lu');
x = dA\b

