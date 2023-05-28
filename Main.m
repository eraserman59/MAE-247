clear
Pos = [-1 0; -.4 0; 0 -.1; .5 0; 1.2 0];
finalPos = Project(Pos);

%simulate if one droped out of the formation

finalPos(4,:) = [];
Project(finalPos)

Pos = [-2 1; -1 1; -.5 0; 0 -1; .4 1; .8 1.5; .9 2];
finalPos = Project(Pos);

%simulate if one droped out of the formation

finalPos(4,:) = [];

Project(finalPos)