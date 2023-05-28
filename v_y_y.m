function [Vy] = v_y_y(yIn)
%V_Y(Y) Summary of this function goes here
%   Detailed explanation goes here
b = 1;
beta = 0.7;
omega = 4;

Vy = (1 + (yIn) / (sqrt((b/2)^2 + yIn^2)) * exp(-(yIn-beta)^2/(2*omega)));


end