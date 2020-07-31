% Solve the differential equations dC/dt = 2t - 0.5 * t^2
% from t = 0 to t = 4 with an initial value C(0) = 0

% Solving the differential equation analytically

syms C(t)

equation = diff(C,t) == 2.*t - 0.5.*t.^2;

initialConditions = C(0) == 0;

C = dsolve(equation,initialConditions);

pretty(C);

time = 0 : 0.01 : 4;

c = eval(subs(C,t,time));

subplot(2,1,1); plot(time,c,'LineWidth',2); grid on

title('Analytical Solution of $$ \frac{dC}{dt} = 2t - \frac{1}{2} t ^{2}$$', 'interpreter', 'latex')
xlabel('t')
ylabel('C(t)')

% Solving the differential equation numerically

g = @(t,C) 2.*t - 0.5.*t.^2;

tRange = [0 4];

Ci = 0;

[tSol, CSol] = ode45(g,tRange,Ci);

subplot(2,1,2); plot(tSol,CSol,'r','LineWidth',2); grid on

title('Numerical Solution of $$ \frac{dC}{dt} = 2t - \frac{1}{2} t ^{2}$$', 'interpreter', 'latex')
xlabel('t')
ylabel('C(t)')

