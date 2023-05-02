A = [0 -3 7;
     1 2 -1;
     5 -2 0;]
OGA = A; %store an original

D=det(A);
b = [4;0;3];


% solve it bitch
A(:,1)=[b(1);b(2);b(3)];
x1 = det(A)/D;

% x2 doesn't work
A = OGA; %reset the first column
A(:,2) = [b(1);b(2);b(3)];
x2 = det(A)/D


A = OGA; %reset the first column
A(:,3) = [b(1);b(2);b(3)];
x3 = det(A)/D


A = OGA %reset the first column
