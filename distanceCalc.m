function [distance,pk] = distanceCalc(birdPos,potentialPos)

  x1 = birdPos(1);
  x2 = potentialPos(1);
  y1 = birdPos(2);
  y2 = potentialPos(2);

  distance = (x1 - x2)^2 + 1/5 * (y1 - y2)^2;
  if x1 < x2
    pk = -1;
  else
    pk = 1;
  end
  if y2 > y1
    distance = distance + 15;
  end


end