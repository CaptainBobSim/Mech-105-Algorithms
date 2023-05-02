Force = [18	22	12	13	17]
xdist =	[0.013	0.020	0.009	0.010	0.012]

% Use MATLAB to store F and x as vectors and then compute vectors of the 
% spring constants and the potential energies. 
% Use the max function to determine the maximum potential energy. 
% (Round the final answer to two decimal places.)

% F = kx
% k = F/x

springConstant = Force./xdist

%  U=1/2kx.^2
potentialEnergy = .5.*springConstant.*(xdist.^2)
        
maxPotential = max(potentialEnergy)
