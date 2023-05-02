function [A] = specialMatrix(n,m)
% This function should return a matrix A as described in the problem statement
% Inputs n is the number of rows, and m the number of columns


%% This crap is the stuff you copy into the grader

if nargin ~= 2
        fprintf('error Wrong amount of inputs you need two. You have %d',nargin);
        error(msg)
end

% It is recomended to first create the matrxix A of the correct size, filling it with zeros to start with is not a bad choice
A = zeros(n,m);

% Now the real challenge is to fill in the correct values of A

%The value of each element in the first row is the number of the column.
A(1,:) = [1:m];

%The value of each element in the first column is the number of the row.
A(:,1) = [1:n];


rowin = 2;
columin = 2;

while columin > 1 & columin <= m
    while rowin > 1 & rowin <= n
    
        %A(2:n,2:m) = ones(n-1,m-1)
        
        A(rowin,columin) = (A(rowin-1,columin)+A(rowin,columin-1))
        
        rowin = rowin+1
    
    end
rowin = 2
    columin = columin+1
end


end
% Things beyond here are outside of your function