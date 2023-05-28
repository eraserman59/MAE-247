function [Xterm] = dfdx(xIn,yIn)
%DFDX Summary of this function goes here
%   Detailed explanation goes here

b = 1;
a = pi/4;

b2 = b/2;
a2 = a/2;

vY = v_y_y(yIn);
vX1 = v_x_x(xIn + b2 - a2);
vX2 = v_x_x(xIn - b2 - a2);
vX3 = v_x_x(xIn + b2 - a2);
vX4 = v_x_x(xIn - b2 + a2);

vXtotal = vX1 + vX2 + vX3 + vX4;

Xterm = vY/b * (vXtotal);

end