disp('Input 3 points on the circle')
p1x = input('Please enter the abscissa of the first point: ');
p1y = input('Please enter the ordinate of the first point: ');
p2x = input('Please enter the abscissa of the second point: ');
p2y = input('Please enter the ordinate of the second point: ');
p3x = input('Please enter the abscissa of the third point: ');
p3y = input('Please enter the ordinate of the third point: ');

%Solving for D,E,F:
d = (((p1x*p1x)-(p3x*p2x))*(p1x-p2x))+(((p1y*p1y)-(p3y*p3y))*(p1x-p2x))+(((p2x*p2x)-(p1x*p1x))*(p1x-p3x))+(((p2y*p2y)-(p1y*p1y))*(p1x-p3x)); 
D = d/((p3y-p1y)*(p1x-p2x)-((p2y-p1y)*(p1x-p3x))); 
e = (((p1x*p1x)-(p3x*p2x))*(p1y-p2y))+(((p1y*p1y)-(p3y*p3y))*(p1y-p2y))+(((p2x*p2x)-(p1x*p1x))*(p1y-p3y))+(((p2y*p2y)-(p1y*p1y))*(p1y-p3y));
E = e/((p3x-p1x)*((p1y-p2y)-(p2x-p1x)*(p1y-p3y)));
F = ((-(p1x*p1x)-(p1y*p1y)) - (2*E*p1x) - (2*D*p1y));

%Solving for r:
r =(-E*-E + -D*-D)^(1/2);

%vector DEF:

%prompting the answers:
fprintf('The x-coordinate of the center of the circle is %.2f\n',-E)
fprintf('The y-coordinate of the center of the circle is %.2f\n',-D)
fprintf('The radius of the circle is %.3f',r)
VectorDEF = [D E F]