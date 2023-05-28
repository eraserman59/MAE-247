function [Upwash] = upwashCalc(xIn,yIn)
%UPWASHCALC Summary of this function goes here
%   Detailed explanation goes here

beta = 0.7;
omega = 4;
rc = 0.1;
pho = 1;

b = 1;
a = pi/4;

b2 = b/2;
a2 = a/2;


firstTemp = pho/(4*pi*b);
num1 = (xIn - a2 + b2)^2 + rc^2;
dem1 = (xIn - a2 - b2)^2 + rc^2;
num2 = (xIn + a2 + b2)^2 + rc^2;
dem2 = (xIn + a2 - b2)^2 + rc^2;

secondtemp = log(num1/dem1);
thirdtemp = log(num2/dem2);
fourthtemp = 1 + (yIn/(sqrt((b/2)^2 + yIn^2)));
fifthtemp = exp(-(yIn-beta)^2/(2*omega));

Upwash = firstTemp * (secondtemp - thirdtemp) * fourthtemp * fifthtemp;

end