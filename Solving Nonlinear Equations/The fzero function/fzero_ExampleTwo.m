% The fzero function doesn't find all roots in a given interval.
% To find multiple roots, it is required to bracket each root so that
% no other roots are included in the interval.
% Each root requires a separate call to fzero.

% We are going to find all roots of f(x) = 0.5 - sin(x) - x^2
% from -2 to 1

f = @(x) 0.5 - sin(x) - x.^2;

fplot(f,[-2 1]); grid on
title('$$ f(x) = 0.5 - \sin(x) - x^{2} $$','interpreter','latex');
yline(0)
xlabel('x')
ylabel('y')

% Find and plot the first root

x1 = fzero(f,[-1.5 -1]);
y1 = f(x1);

hold on
plot(x1,y1,'or')
hold off

% Find and plot the second root

x2 = fzero(f,[0 0.5]);
y2 = f(x2);

hold on
plot(x2,y2,'or')
hold off