b = 'Forzado2';
file = strcat(b, '.csv');
A = importdata(file);
x = A(:,1);
y = A(:,2);
plot(x,y)
title('Ángulo como función del tiempo')
xlabel('t(s)')
ylabel('\phi(°)')
ylim([-150 150])
xlim([0 95])
grid on
ax = gca;
exportgraphics(ax,strcat(strcat('./images/',b),'.jpg'));
