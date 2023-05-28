function [newPos] = FollowerBirdMotion(currentPos, Wstep, refPos)
%LEADBIRDMOTION updates follower bird motion's position
%   Simplified, no noise on x or y axis
%    refPos(1) = x ref, 2 = yref, 3 = pk

Xin = currentPos(1);
Yin = currentPos(2);

vel = 5; % 5 m/s vel
timestep = 0.05; % 0.05 time set
gamma = 0.5;

newPos(1) = gamma * Xin + (1-gamma)* (refPos(1) + Wstep(1)*refPos(3)) ;
newPos(2) = gamma*Yin + (1-gamma)* (refPos(2) + Wstep(2))- (vel * timestep);

end