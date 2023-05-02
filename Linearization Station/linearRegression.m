function [fX, fY, slope, intercept, Rsquared] = linearRegression(x,y)
%linearRegression Computes the linear regression of a data set
% Compute the linear regression based on inputs:

if length(x) == length(y)
    %     1. x: x-values for our data set
    x = x;
    %     2. y: y-values for our data set
    y = y;
else
    error('array dimensions are not equal')
end


%definition of an outlier: "a point which falls more than 1.5 times the
%interquartile range above the third quartile or below the first quartile."

% First, order your data by value. A quartile is simply 1/4th of the data
% points in your set. The first quartile is the first 1/4th of your data,
% the smallest 1/4th of your data values. The 2nd quartile is the next
% 1/4th of your data, then the 3rd quartile, and lastly the 4th quartile is
% the largest 1/4th values of your data set. See this Wolfram website for
% some more info.

% Interquartile range:
%Sort your data from smallest to largest
[sortedY, sortOrder] = sort(y);
sortedX = x(sortOrder)



n = length(x);
medianoItsaMeMario = median(sortedY); %Median of sorted data




%Find what y-values are at those indices, call them Q1 and Q3.
%Compute 1st quartile index with [(n+1)/4]
firstQuartIndex = floor((n+1)./4)
Q1 = y(firstQuartIndex)

%Compute the 3rd quartile index with [(3n+3)/4]
thirdQuartIndex = floor((3*n+3)./4)
Q3 = y(thirdQuartIndex)

Q1 = median(sortedY(sortedY<medianoItsaMeMario)); %first quartile
Q3 = median(sortedY(sortedY>medianoItsaMeMario));%third quartile


%Compute IQR = Q3-Q1
IQR = Q3-Q1


%Now, about that outlier. 
% If any value in your data set is 1.5*IQR < Q1 or if any point is Q3<1.5*IQR, we discard it.



lowerbound = Q1 - 1.5*IQR; %Below this are dog$h*t
upperbound = Q3 + 1.5*IQR; %Above this are dog$h*t
outliers = sortedY < lowerbound | sortedY > upperbound; %any values outside bounds
fY = sortedY(~outliers);
fX = sortedX(~outliers); 

%linear regression
n = length(fY);
sxy = sum(fX.*fY);
sx = sum(fX);
sy = sum(fY);
sx2 = sum(fX.^2);
sy2 = sum(fY.^2);

a1 = ((n*sxy-sx*sy)/(n*sx2-sx.^2)); %Slope of the regression
a0 = mean(fY)-a1*mean(fX); %Intercept of regression
intercept = a0;
fx = @(x) a0+ a1*x;
slope = a1;

%R sqaured value
ybar = mean(fY); %mean of y values
SStot = sum((fY-ybar).^2);%sum of squares
SSres = sum((fY-fx(fX)).^2);
Rsquared = 1 - SSres/SStot;


%   Outputs:
%     1. fX: x-values with outliers removed
%     2. fY: y-values with outliers removed
%     3. slope: slope from the linear regression y=mx+b
%     4. intercept: intercept from the linear regression y=mx+b
%     5. Rsquared: R^2, a.k.a. coefficient of determination

end