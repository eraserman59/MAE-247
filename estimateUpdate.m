function [estk, fMaxReturn] = estimateUpdate(wPrev,refPosDiff,fMax)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
mu = 0.002;

[dks,fCurrent] = dk_calc(refPosDiff,fMax,wPrev);
uk = u_kCalc(refPosDiff);


if fCurrent > fMax
    fMaxReturn = fCurrent;
else
    fMaxReturn = fMax;
end


estk = wPrev + mu * uk * (dks - uk*wPrev);

end