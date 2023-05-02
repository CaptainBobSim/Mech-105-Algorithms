

epsil = single(1); % Set Epsilon to 1

while 1 + epsil > 1 % If it's less than or equal to 1 then skip this loop - this loop only executes when it's greater than 1.

    epsil = epsil/2; % Split it like it's a phone book!

end


epsil = 2 * epsil %If we went too far back up one.


calcEpsil = eps(1)