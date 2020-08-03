% We are going to solve the differential equation
% dC/dt = 2t - (1/2)t^2 within the interval [0,5] with the initial
% condition C(0) = 0

tRange = [0 5];
C0 = 0;
dCdt = @(t,C) 2.*t - 0.5.*t.^2;
solution = ode45(dCdt,tRange,C0);

% We can use the deval function to evaluate the solution at any point
% in the defined interval tRange

t16 = 1.6;
C16 = deval(solution,t16);

% The deval function can also accept a vector of values for
% evaluation, as long as all values are in the original interval

t = linspace(0,5);
C = deval(solution,t);

% Plot C as a function of t

plot(t,C,'LineWidth',2); grid on
title('Numerical Solution of $$ \frac{dC}{dt} = 2t - \frac{1}{2}t^{2}$$', 'interpreter','latex')
xlabel('t')
ylabel('C(t)')

% Plot the point (t16,C16)

hold on
plot(t16,C16,'or')
hold off

% Plot the maximum value of C

hold on
[maxValue, indexValue] = max(C);
plot(t(indexValue), maxValue,'or')
xline(t(indexValue),'--r')
yline(maxValue,'--r')
hold off