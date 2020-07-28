% Anonymous functions can be created to represent a system of equations.

g = @(x,y) x.^2 + y.^2 - 4;
h = @(x,y) y.^2 + 3*x.*y - 1;

fimplicit(g)
hold on
fimplicit(h)
hold off

grid on
xlabel('x')
ylabel('y')

% The vector input w represents x and y.
% x = w(1) and y = w(2)
% f needs as an input a two element vector
% The output of f is a two element column vector

f = @(w) [g(w(1),w(2)) ; h(w(1),w(2))];

% One of the roots of the system is approximately located near the point
% A(-2, -0.1621). We are going to use fsolve to solve the system f.

A = [-2,-0.1621];
s = fsolve(f,A);

% After obtaining the values of x and y that satisfy the system, it is
% a good idea to plot them.

hold on
plot(s(1),s(2),'ro')
hold off