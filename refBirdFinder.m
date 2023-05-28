function [refPos, birdNeighbor] = refBirdFinder(birdPos,birdNumber,Positions)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

s = size(Positions);
n = s(1);
birdNeighbor = [0,0];
refPos = zeros(3,1);
%temp very large start distance
distance = 100;
for i = 1:n
    if i ~= birdNumber
      potentialPos = Positions(i,:);
      [distanceTemp,pk] = distanceCalc(birdPos,potentialPos);
      if distanceTemp < distance
          refPos(1) = potentialPos(1);
          refPos(2) = potentialPos(2);
          refPos(3) = pk;
          birdNeighbor(2) = birdNeighbor(1);
          birdNeighbor(1) = i;
          distance = distanceTemp;
      end
      
    end
end
end
