% Specify the variables needed to solve this problem (ie. height of each section, diameter, radiaus, ...)
%   It is alwasy easier to work with variables (diameter_cyl = 25) than to use numbers everywhere, since a 
%   diameter indicates something specific but the number 25 could mean anything


% You can comment / uncomment lines below for testing. This will overwrite the previous line for h = 20.
% For submission, make sure all of the following lines are commented out and h = 20! (OR IT IS MARKED AS WRONG)
%h = 5
%h = 19
%h = 47
%h = -1
h = 33

h = 20

% Now compute the volume. Using conditional statments you will want to first check the height makes sense,
% and then solve the volume depending on what portion of the tank has been filled.
% Make sure that your volume is stored in the variable v! (OR IT WILL BE MARKED AS WRONG)
% You may find it more convenient to move v around in you code, it is only given here to indicate what variable to use.

cylRad = 25/2;
bigRad = 46/2;

if h <= 19 & h >= 0
    v = pi*cylRad^2*h
    fprintf('volume is = %d',v);

elseif h > 19 & h <= 33
    xGap = (bigRad - cylRad) %this is x distance from cylinder to cone end
    theta = atan(xGap/14) %making a right triangle using xGap and 14m height to find theta
     Rn= cylRad+(sin(theta)*(h-19))
    v = (pi*cylRad^2*19) + (pi/3)*(h-19)*(cylRad^2 + cylRad * Rn + Rn^2) % make sure to subtract height
    fprintf('volume is = %d',v);

elseif h > 33
    fprintf('Sorry overflow error bwahahaha');
else
    fprintf('Sorry we hate that number %n');
end
    



% volume of truncated cone: V = (1/3) * π * h * (r² + r * R + R²) where R
% is large radius, r is small radius, h is height of truncated cone.

