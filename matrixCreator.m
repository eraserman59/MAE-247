function [A] = matrixCreator(birdNeighboorMatrix)
%UNTITLED7 Summary of this function goes here
%   Detailed explanation goes here
[n,m] = size(birdNeighboorMatrix);

A = zeros(n);

for i = 1:n
    n1 = birdNeighboorMatrix(i,1);
    n2 = birdNeighboorMatrix(i,1);
    A(i,i) = 1/3;
    A(i,n1) = 1/3;
    A(i,n2) = 1/3;
end