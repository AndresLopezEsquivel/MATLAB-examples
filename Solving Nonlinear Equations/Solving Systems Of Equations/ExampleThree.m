% We are going to solve the system
% (1) x^2 + y^2 + z^2 - 3 = 0
% (2) 3x -2y + z - 2 = 0
% (3) sin(x) * cos(y) + z = 0

f = @(x,y,z) x.^2 + y.^2 + z.^2 - 3;
g = @(x,y,z) 3.*x - 2.*y + z - 2;
h = @(x,y,z) sin(x) .* cos(y) + z;

% The fimplicit3 function creates an implicit surface plot
% defined by f(x,y,z) = 0

fimplicit3(f,'y','FaceAlpha',0.4)

hold on

fimplicit3(g,'r','FaceAlpha',0.4)
fimplicit3(h,'b','FaceAlpha',0.4)

hold off

xlabel('x')
ylabel('y')
zlabel('z')

mySystem = @(w) [f(w(1),w(2),w(3)); g(w(1),w(2),w(3)); h(w(1),w(2),w(3))];

% Find the solution of the system near the point (-0.5,-1.5,-0.5)

wRoot = fsolve(mySystem,[-0.5,-1.5,-0.5]);

% It is possible to add wRoot to the existing plot with the plot3 function

hold on
plot3(wRoot(1),wRoot(2),wRoot(3),'m.','MarkerSize',40)
hold off