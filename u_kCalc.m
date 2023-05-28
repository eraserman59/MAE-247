function [uOut] = u_kCalc(refPosDiff)
%U_KCALC Summary of this function goes here
%   Detailed explanation goes here

xIn = refPosDiff(1);
yIn = refPosDiff(2);
pk = refPosDiff(3);

fx = dfdx(xIn,yIn);
fy = dfdy(xIn,yIn);

uOut = pk*fx * fy;

end