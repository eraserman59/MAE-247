function [yTerm] = dfdy(xIn,yIn)
%DFDY Summary of this function goes here
%   Detailed explanation goes here

b = 1;
a = pi/4;
a2 =a /2;
beta = 0.7;
omega = 4;

vX1 = v_x_x(xIn - a2);
vX2 = v_x_x(xIn + a2);
vXtotal = vX1 - vX2;

eterm = exp(-(yIn-beta)^2/(2*omega));
firstTemp = (beta^2/4) / ((b^2)/(4+yIn^2))^(3/2);
secondTemp = (yIn)/(sqrt((b^2)/(4+yIn^2)));
thirdTemp = (yIn-beta)/omega * (1 + secondTemp );
diffTerm = eterm*(firstTemp - thirdTemp);
yTerm = diffTerm * vXtotal;

end