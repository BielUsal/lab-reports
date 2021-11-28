
x = A(:,1);
xer = ones(9,1) * 0.1;
T = A(:,2);
Ter = ones(9,1) * 0.1*10^(-2);
a=linspace(0.05,1.8,1000);
c = polyfit(T,x,1);
hold on
box on
grid on
errorbar(T,x,xer,xer,Ter,Ter, '.')
xlabel(' \lambda (m)')
ylabel('f^{-1}')
plot(a,polyval(c,a))
xlix([0.05, 1.8])
hold off

disp(c)
