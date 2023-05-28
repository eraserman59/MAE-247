function [dk,fCurrent] = dk_calc(refPosDiff,fMax, wPrev)
%DK_CALC Summary of this function goes here
%   Detailed explanation goes here

xIn = refPosDiff(1);
yIn = refPosDiff(2);
pk = refPosDiff(3);

fCurrent = upwashCalc(xIn,yIn);
dx = dfdx(xIn,yIn);
dy = dfdy(xIn,yIn);

washTerm = fMax - fCurrent;

dk(1) = washTerm + pk*dx *wPrev(1);
dk(2) = washTerm + dy * wPrev(2);




end