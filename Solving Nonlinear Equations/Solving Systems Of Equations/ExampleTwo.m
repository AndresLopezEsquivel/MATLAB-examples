% We are going to solve the nonlinear system
% (1) 2xy - 2y^2 = 1
% (2) y^3 = cos(x)

g = @(x,y) 2.*x.*y - 2.*y.^2 - 1;
h = @(x,y) y.^3 - cos(x);

i = [-3 3];

fimplicit(g,i);
hold on;
fimplicit(h,i);
hold off;

grid on
xlabel('x')
ylabel('y')

f = @(w)[ g(w(1),w(2)); h(w(1),w(2))];

A = [-1.5,-0.5];
s = fsolve(f,A);

hold on
plot(s(1),s(2),'ro')
hold off