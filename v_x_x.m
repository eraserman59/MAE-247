function [Vx] = v_x_x(xIn)
%V_X_X Summary of this function goes here
%   Detailed explanation goes here

Pho = 1; %unsure if this is the proper rho. 
rc = 0.1;

Vx = Pho/(2*pi) * (xIn/(rc^2+xIn^2));


end