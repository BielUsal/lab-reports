
x = A(:,1);
xer = 0.1*10^(-2);
T = A(:,2);
Ter = 0.1;
a=linspace(0.05,1.8,1000);
c = polyfit(T,x,1);
hold on
box on
grid on
errorbar(T,x,xer,xer,Ter,Ter, '.')
xlabel('{\lambda}\textit (m)')
ylabel('f^{-1}')
plot(a,polyval(c,a))
xlim([0.05, 1.8])
hold off

disp(c)
