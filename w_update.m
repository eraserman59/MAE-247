function [wOut] = w_update(A,estimates)
%W_UPDATE Summary of this function goes here
%   Detailed explanation goes here
xEstimate = estimates(:,1);
yEstimate = estimates(:,2);

wOut(:,1) = A * xEstimate;
wOut(:,2) = A * yEstimate;
end