function [leaderNumber] = leaderChoose(Pos)
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here

[n,m] = size(Pos);
leader = 0;
Ydown = 100;
for i = 1:n
    Ytemp = Pos(i,2);
    if Ytemp < Ydown
        leader = i;
        Ydown = Ytemp;
    end
end
leaderNumber = leader;
end