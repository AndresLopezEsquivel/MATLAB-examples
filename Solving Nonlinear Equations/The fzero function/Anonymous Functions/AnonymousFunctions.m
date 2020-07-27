% Create a function handle to an anonymous function
% f(x) = 0.5 - sin(x)

f = @(x) 0.5 - sin(x);

% Plot the function from x = -1 to x = 1

fplot(f,[-1 1])

% Create a function handle to an anonymous function
% g(x) = x^2

g = @(x) x.^2;

% In the same figure, plot the function from -1 to 1
hold on
fplot(g,[-1 1])
title('Anonymous Functions')
xlabel('x')
ylabel('f(x), g(x)')
hold off