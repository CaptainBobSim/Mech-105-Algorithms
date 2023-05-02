%format long
A = [10 2 -1;
    -3 -5 2;
     1 1 6]

b = [27; -61.5; -21.5]

Easy = A\b

UseFunction = GaussNaive(A,b)

%Testadavariables
Check1 = Easy(1)*A(1,1) + Easy(2)*A(1,2) + Easy(3)*A(1,3)
Check2 = Easy(1)*A(2,1) + Easy(2)*A(2,2) + Easy(3)*A(2,3)
Check3 = Easy(1)*A(3,1) + Easy(2)*A(3,2) + Easy(3)*A(3,3)
