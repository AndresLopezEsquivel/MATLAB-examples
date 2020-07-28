% We are going to use the fzero function to find the root of
% 0.5 - sin(x) = x^2 between -1 and 1

f = @(x) 0.5 - sin(x) - x.^2;

% Plot f(x)

fplot(f,[-1 1]); grid on
yline(0)
title('$$ f(x) = 0.5 - \sin(x) - x^{2} $$','interpreter','latex')
xlabel('x')
ylabel('f(x)')

% Like the bisection method, and interval that brackets the desired root
% is needed

x0 = [0 0.5];

% Use fzero to determine the desired root located in the interval x0

x = fzero(f,x0);
y = f(x);

hold on
plot(x,y,'or');
hold off