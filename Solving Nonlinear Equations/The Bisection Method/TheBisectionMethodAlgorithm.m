
x = linspace(-2,1);
y = 0.5 - sin(x) - x.^2;

subplot(2,1,1); plot(x,y,'LineWidth',2);
title('$$f(x) = 0.5 - \sin(x) - x^{2}$$','interpreter','latex')
grid on
xlabel('x')
ylabel('y')
yline(0)

xn = 0.5;
xp = 0.2;
xline(x1,'--r')
xline(x2,'--r')

% The Bisection Method Algorithm

xmp = (xp + xn) / 2;
ymp = 0.5 - sin(xmp) - xmp^2;

while abs(ymp) > 0.001
    
    if ymp > 0
        xp = xmp;
    else
        xn = xmp;
    end
    
    xmp = (xp + xn) / 2;
    ymp = 0.5 - sin(xmp) - xmp^2;

end

subplot(2,1,2);plot(x,y,'LineWidth',2);
title('$$f(x) = 0.5 - \sin(x) - x^{2}$$','interpreter','latex')
grid on
xlabel('x')
ylabel('y')
yline(0)
xline(xmp,'--r')