% We are going to estimate the solution to the equation 
% 0.5 - sin(x) = x^2 between x = -1 and x = 1
% using the Root Finding Form of it. 

% First of all, we use linspace to create a vector of 100 equally-spaced 
% elements from -1 to 1

x = linspace(-1,1);

% Using the Root Finding Form, we create a function f(x) and
% calculate the values of f(x) for every value in x.

y = 0.5 - sin(x) - x.^2;

% Then, we plot y as a function of x

plot(x,y);
yline(0);
xlabel('x');
ylabel('f(x)');
title('$$ 0.5 - \sin(x) = x^{2} $$','interpreter', 'latex');
grid on

% According to the plot, there is one root.

numRoot = 1;

