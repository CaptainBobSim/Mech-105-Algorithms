a = [3 2 -6]; b = [4 -3 1];


Dot = dot(a,b)


Cross = cross(a,b)

Magnitude = norm(Cross)


%dot
%{a}·{b} = ab cosθ

angle = atan2(norm(cross(a,b)),dot(a,b))
degAngle = rad2deg(angle)