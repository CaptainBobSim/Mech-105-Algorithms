x = [1 2 3 4 5 6]
y = [1 2 1.3 3.75 2.5 100]
% We should filter out x=6,y=100!
[fX, fY, slope, intercept, Rsquared] = linearRegression(x,y)

% Actual values for your comparison:
xAnswer = [1 3 2 5 4]
yAnswer = [1 1.3 2 2.5 3.75]
slopeAnswer = 0.4750
interceptAnswer = 0.6850
RsquaredAnswer = 0.4758

% Will show a 1 if your result is within 1.e-12 of the answer.
fprintf("fX is close to xAnswer? %d\n", abs(fX-xAnswer)<1.e-12) % Since fX is an array, will print one line per element.
fprintf("fY is close to yAnswer? %d\n", abs(fY-yAnswer)<1.e-12) % Since fY is an array, will print one line per element.
fprintf("slope is close to slopeAnswer? %d\n", abs(slope-slopeAnswer)<1.e-12)
fprintf("intercept is close to interceptAnswer? %d\n", abs(intercept-interceptAnswer)<1.e-12)
fprintf("Rsquared is close to RsquaredAnswer? %d\n", abs(Rsquared-RsquaredAnswer)<1.e-12)