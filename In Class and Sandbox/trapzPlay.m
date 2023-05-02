Y = [1 4 9 16 25];
X = [1 2.5 5  7 10];

Q = trapz(X,Y)

%Q1 = trapz(X,Y)


    y = @(x) -2.*x.^4+3.*x+5;
    x = -1:1;
    area = trapz(x,y(x))
    % Plot x vs y
    fplot(y, [x(1),x(end)]);
    grid on