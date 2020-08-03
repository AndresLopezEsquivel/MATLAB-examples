% For a savings account with a r annual interest rate,
% the account balance A(t) after t years solves the differential
% equation dA/dt = rA

% Imagine the following situation: You open a savings account with $100
% and the account has 6% annual interest rate. 
% Find the account balance after 10 years and plot the result.

r = 0.06;
tRange = [0 10];
A0 = 100;
dAdt = @(t,A) r .* A;
[tSol, ASol] = ode45(dAdt,tRange,A0);

plot(tSol,ASol,'LineWidth',2); grid on
title('Numerical Solution of $$ \frac{dA}{dt} = rA$$','interpreter','latex')
xlabel('t')
ylabel('A(t)')

% Account balance at the end of 10 years
A10 = ASol(end);

% At the end of 10 years, the annual interest rate decreased to
% 3% (r = 0.03). Find the account balance for years 10 through 20.

r = 0.03;
tRange = [10 20];
A0 = A10;
dAdt = @(t,A) r .* A;
[tSol,ASol] = ode45(dAdt,tRange,A0);

hold on
plot(tSol,ASol,'LineWidth',2)
hold off