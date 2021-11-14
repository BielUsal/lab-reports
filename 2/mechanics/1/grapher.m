T2 = (A(:,1).').^2;
T2er =2*(A(:,1).').*(A(:,2).');
R2= (A(:,3).').^2;
R2er = 2*(A(:,3).').*(A(:,4).');
x=linspace(0.5,0.3,1000).^2;
hold on
errorbar(R2,T2,T2er,T2er,R2er,R2er, 'x')
ylabel('T^2 (s^2)')
xlabel('R^2 (m^2)')
hold off

b = polyfit(R2,T2,1);

disp(b)