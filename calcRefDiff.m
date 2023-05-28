function [refPosDiff] = calcRefDiff(currentPos, refPos)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
refPosDiff(3) = refPos(3);
refPosDiff(1) = currentPos(1) - refPos(1);
refPosDiff(2) = currentPos(2) - refPos(2);
end