clear; clc; close all;
format long g

A = [15 -3 -1
    -3 18 -6 
    -4 -1 12];

b = [4000; 1200; 2350];

inverse = inv(A);

%solve
solution = inverse*b;
    
massInput = inverse(1,3);%*9

%9/inverse(1,3);


norm(A)








