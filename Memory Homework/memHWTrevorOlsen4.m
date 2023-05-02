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


%In a fashion similar to the given algorithm, develop your own M-file to determine the smallest positive real number used in MATLAB. 
% Base your algorithm on the notion that your computer will be unable to reliably distinguish between zero, and a quantity that is smaller than this number.


epsil = 1; % Set Epsilon to 1
pastEpsil = epsil;

while epsil > 0 & pastEpsil > 0 % Run this loop if the epsilon and past epsilon are bigger than zero (ie there is enough memory)
    
    epsil = epsil/2; % Split it like it's a phone book!
    % Now see if it's zero!
    
    if epsil > 0;
        pastEpsil = epsil; % if epsil still has data we can overwrite our pastEpsil with epsil.
        
    end % but when epsil reaches zero then pastEpsil is useful and we need to protect it!

end

pastEpsil

loggy_epsil = log2(pastEpsil)

loggyRealMin = log2(realmin)



