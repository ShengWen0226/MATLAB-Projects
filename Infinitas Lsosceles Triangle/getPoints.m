function [points] = getPoints(points,n)
oldPoints = points;
for i = 1:n-1
	newPoints = [(oldPoints(1,1)+oldPoints(2,1))/2,(oldPoints(1,2)+oldPoints(2,2))/2
        ;(oldPoints(2,1)+oldPoints(3,1))/2,(oldPoints(2,2)+oldPoints(3,2))/2
        ;(oldPoints(3,1)+oldPoints(1,1))/2,(oldPoints(3,2)+oldPoints(1,2))/2];
    points = cat(1,points,newPoints);
    oldPoints = newPoints;
end

end

