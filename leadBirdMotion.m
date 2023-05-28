function [newPos] = leadBirdMotion(Xin,Yin)
%LEADBIRDMOTION updates lead bird motion's position
%   Simplified, no noise on x or y axis

vel = 5; % 5 m/s vel
timestep = 0.05; % 0.05 time set

Xout = Xin;
Yout = Yin - (vel * timestep);
newPos = [Xout, Yout];

end