
time = [4	8	12	16	20	24];
%the formula I used
time = transpose(time)
FU = [1600	1320	1000	890	650	560];
FU = transpose(FU)

%FUNoLog = FU;
FU = log10(FU)

% Apparently MatLab likes if you pad the numbers
% When you pad the numbers with ones on the left it's like
% OK I'll give you the intercept now!
TIME = [ones(length(time),1) time];
%This uses a backslash \ not a normal /
b = TIME\FU

%y=alpha*10^(beta*x)

% Evaluate
t = [0:1000]
equation = @(t) b(1) + b(2)*t

equationTo10 = @(t) 10.^((b(1))+b(2)*t)
equationTo10twohundred = @(t) 10.^((b(1))+b(2)*t)-200

zero200 = fzero(equationTo10twohundred,200)

%%

heyo = loggfg(5)/log10(5)
ten5 = 10^5;

e5 = exponent(5);

%log10() 
