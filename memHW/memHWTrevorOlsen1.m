% Trevor Olsen
% MECH 105
% 2.2.2023
% For computers, the machine epsilon ε can also be thought of as the smallest number that when added to one gives a number greater than 1. An algorithm based on this idea can be developed as follows:
% Step 1: Set ε = 1.
% Step 2: If 1 + ε is less than or equal to 1, then go to Step 5.
%             Otherwise go to Step 3.
% Step 3: ε = ε/2
% Step 4: Return to Step 2
% Step 5: ε = 2 × ε
% 
% Develop an M-file based on the given algorithm to determine the machine epsilon.


epsil = 1; % Set Epsilon to 1

while 1 + epsil > 1 % If it's less than or equal to 1 then skip this loop - this loop only executes when it's greater than 1.

    epsil = epsil/2; % Split it like it's a phone book!

end


epsil = 2 * epsil %If we went too far back up one.


calcEpsil = eps(1)