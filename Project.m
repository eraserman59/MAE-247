function [finalpos] = Project(Pos)
%start pos
n = size(Pos, 1);
% current w estimate
Wprev = ones(n,2);
% some intializations
fmaxPrev = zeros(n,1);


x = Pos(:,1);
y = Pos(:,2);
figure
scatter(x,y,'filled')
title('Starting Position')

%loop
for i = 1:50
    leader = leaderChoose(Pos);
    [posNew,Wnew, fmaxNew] = iteration(Pos,Wprev,fmaxPrev,leader);
    wPrev = Wnew;
    Pos = posNew;
    fmaxPrev= fmaxNew;
end


%plot final positions
x = Pos(:,1);
y = Pos(:,2);
figure
scatter(x,y,'filled')
title('end position')
finalpos = Pos;

end
