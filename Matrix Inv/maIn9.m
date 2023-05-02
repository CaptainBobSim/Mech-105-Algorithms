A = [ 132 -22 0; -5 27 -7; -117 0 132]
b = [1000; 2000; 0]

[L U P] = lu(A)

inverse = inv(A)

concsolution = inverse*b

reduction = inverse(1,2)*b(2)


doubah= inverse(3,1)*(b(1).*2)

helf = inverse(3,2)*(b(2).*.5)

cheng = doubah+helf