clear; clc; close all;

% C3 should equal 75

A = [13.422   0        0        0;
    -13.422 12.252     0        0;
       0    -12.252  12.377     0;
       0      0      -12.377  11.797];

b = [750.5;
    300;
    102;
    50];

inverse = inv(A);

%solve
solutionConcentration = inverse*b;

%We need the lake to be at 75 but affect lake powell c1

%Change in response for C3 = inv matrix 3,1 * change in load1
deltaHavasu = 101.932694752903-75; % (50-75);
deltaHavasuMult = deltaHavasu*inverse(4,1)

101.932694752903-75

Load1 = deltaHavasu/inverse(4,1)

%%Did not do squat
%LoadPlus = b(1)-Load1
%loading = b(1)+deltaHavasuMult


digits(16); % set the number of significant digits to 16
x = A \ b; % solve the system of equations
r = b - A*x; % calculate the residual

suspect_digits = extractAfter(sprintf('%.17f', r'), '0.'); % extract the digits after the decimal point

digits(32); % restore the number of significant digits

fprintf('Suspect digits: %s\n', suspect_digits); % display the suspect digits


%ANorm = normc(A)
%inNorm = inv(ANorm)



hiImNorm =     [0.7071    0.0000    0.0000    0.0000
   -0.7071    0.6147    0.0000    0.0000
         0   -0.6147    0.6442    0.0000
         0         0   -0.6442    1.0000]


invNorm = inv(hiImNorm)

columnSum = sum(invNorm(1:4,1))

log10(columnSum * 8.6353)


% d = digits(16); % set the number of significant digits to 16
% x = A \ [1; 1; 1]; % solve the system of equations
% r = [1; 1; 1] - A*x; % calculate the residual
% fprintf('Suspect digits: %s\n', extractAfter(sprintf('%.17f', r'), '0.')); % extract the suspect digits
% digits(d); % restore the number of significant digits