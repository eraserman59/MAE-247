function [posNew, Wnew, fmax] = iteration(Pos , Wprev, fmax, leader)
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
%loop, this should be own function in future give sec
n = size(Pos,1);
refPosMatrix = zeros(n,3);
fullEstimateMatrix = zeros(n,2);
birdNeighboorMatrix = zeros(n,2);


for i = 1:n 
    birdPos = Pos(i,:);
    %find ref bird and neigboors, leader ignores ref bird info
    [refPos,birdNeighbor] = refBirdFinder(birdPos,i,Pos);

    if i == leader
      estimate = Wprev(i,:);
    else
      refPosDiff(1) = birdPos(1) - refPos(1);
      refPosDiff(2) = birdPos(2) - refPos(2);
      refPosDiff(3) = refPos(3);
      w_kz = Wprev(i, :);
      [estimate, fmax(i)] = estimateUpdate(w_kz,refPosDiff,fmax(i));
      refPosMatrix(i, :) = refPos;
    end
    fullEstimateMatrix(i, :) = estimate;
    birdNeighboorMatrix(i,:) = birdNeighbor;
    
end
A = matrixCreator (birdNeighboorMatrix);
Wnew = A * fullEstimateMatrix;

posNew = zeros(n,2);
%motion update
for i = 1:n
    birdPos = Pos(i,:);
    if i == leader
        birdPos = leadBirdMotion(birdPos(1), birdPos(2));
    else
        wStep = Wnew(i,:);
        refPos = refPosMatrix(i, :);
        birdPos = FollowerBirdMotion(birdPos,wStep,refPos);
    end
posNew(i,:) = birdPos;

end
end
