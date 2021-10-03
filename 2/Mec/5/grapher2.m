A = importdata('dratio.csv');
d = 10^(-2) * A(:,1);
der =10^(-2)* A(:,2);
Oo = A(:,3);
Ooer = A(:,4);
x=linspace(-0.022,0.023,1000);
hold on
errorbar(d,Oo,Ooer,Ooer,der,der, '.')
xlabel('d(m)')
ylabel('\Omega \omega(s^{-2})')
plot(x,polyval(polyfit(d,Oo,1),x))
xlim(10^-2*[-2.2 2.3])
hold off

b = polyfit(d,Oo,1);

disp(b)