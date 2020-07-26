% With the following code we are going to identify brackets
% for the roots of the function f(x) = 0.5 - sin(x) - x^2
% within the interval [-2,1]

x = linspace(-2,1);
y = 0.5 - sin(x) - x.^2;
plot(x,y,'LineWidth',2);
title('$$f(x) = 0.5 - \sin(x) - x^{2}$$','interpreter','latex')
grid on
xlabel('x')
ylabel('y')
yline(0)

% For the root near x = 0.4, there must be a x1 value such that
% f(x1) > 0 and a x2 value such that f(x2) < 0

x1 = 0.2;
x2 = 0.5;
x0 = [x1 x2];
xline(x1,'r')
xline(x2,'r')

% The Intermediate Value Theorem guarantees there must be at least one
% root between x1 and x2
