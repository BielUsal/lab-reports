x = log(abs(A(:,1)))/log(10);
y = log(abs(A(:,2)))/log(10);
hold on
plot(x,y,'.')
R1 = 1000;
R2 = 10000;
R3 = 10000;
C1 = 0.00000001;
C2 = 0.00000001;
s=linspace(2*pi*1,2*pi*200000,500000).*i;
T =(abs(-1/(R1*R2*C1*C2)./(s.^2+(s.*((1/R1+1/R2+1/R3)/C1))+ 1/(R2*R3*C1*C2))));
plot(log(abs(s))/log(10),log(T)/log(10))
title('Diagrama de Bode')
xlabel('log(|s|)')
ylabel('log(|T|)')
legend('Datos experimentales','Valores Teóricos')
box on
grid on
hold off

