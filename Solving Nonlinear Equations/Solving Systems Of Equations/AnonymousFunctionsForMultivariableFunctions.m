% Systems of equations can be solved using the fsolve functions.

% Create a function handle to an anonymous function
% for f(x,y) = x^2 + y^2 - 4

f = @(x,y) x.^2 + y.^2 - 4;

% Evaluate f(0,1)

z = f(0,1);

% To visualize a function of two variables it is necessary to create 
% a surface plot. By default fsurf plots the function within the interval
% -5 to 5, however, you can plot over a specified interval. 

% Here the interval applies for both x and y axes.

fsurf(f, [-10 10]);

% To specify different intervals for x and y axes.

figure

fsurf(f, [-5 5 -10 10]);

hold on

fsurf(60,'r')

hold off

figure

fcontour(f)

figure 

fimplicit(f)