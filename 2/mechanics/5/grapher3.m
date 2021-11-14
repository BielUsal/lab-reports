A = importdata('mt.csv');
m = A(:,1);
mer =10^(-2)* A(:,2);
R = 0.15;
b = A(:,3);
T = (R*((9.81*b.^2)/(4*pi^2)-R)).^(-1);
Ter = A(:,4);
x=linspace(0.6,2.6,1000);
c = polyfit(T,m,1);
hold on
errorbar(T,m,mer,mer,Ter,Ter, '.')
xlabel('R((g T^2)/4\pi^2 - R)(m^{-2})')
ylabel('m (kg)')
plot(x,polyval(c,x))
%xlim(10^-2*[-2.2 2.3])
hold off

disp(c)