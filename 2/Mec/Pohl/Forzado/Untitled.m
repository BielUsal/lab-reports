%Datapoints 
f1 = [3.284, 3.157, 3.316];
f1e =[0.013, 0.016, 0.015];
f4 = [3.303, 3.150,3.335];
f4e =[0.01,0.039,0.015];
f6 = [3.321, 3.127, 3.344];
f6e =[0.008, 0.022, 0.022];
f8 = [3.324, 3.177, 3.340];
f8e =[0.016, 0.040, 0.029];
a1 = [131.77, 13.61, 87.18];
a1e=[0.91, 0.42, 0.27];
a4=[70.77, 12.78, 43.42];
a4e=[0.69, 0.41, 0.31];
a6=[25.893, 11.48, 18.73];
a6e=[0.099, 0.65, 0.29];
a8=[15.39, 11.29, 13.24];
a8e=[0.18, 0.58, 0.44];
%Coefficients for the fits
omega0 = 3.28;
f = linspace(3.0,3.7,1000);
alpha = 9;
alpha4 =9;
alpha6 =9;
alpha8 =9;
gamma1 = 0.03;
gamma4 = 0.050;
gamma6 = 0.0780;
gamma8 = 0.1;
beta1 = alpha*((omega0^2-f.^2).^2 + 4*gamma1^2*f.^2).^(-1);
beta4 = alpha4*((omega0^2-f.^2).^2 + 4*gamma4^2*f.^2).^(-1);
beta6 = alpha6*((omega0^2-f.^2).^2 + 4*gamma6^2*f.^2).^(-1);
beta8 = alpha8*((omega0^2-f.^2).^2 + 4*gamma8^2*f.^2).^(-1);
%Now, to the graphs
errorbar(f1,a1, a1e, a1e, f1e,f1e,'g.','DisplayName', '')
xlabel('\Omega (Hz)')
ylabel('\beta (°)')
xlim([3.1 3.5])
ylim([0 120])
hold on
errorbar(f4,a4, a4e, a4e, f4e,f4e,'r.','DisplayName', '')
errorbar(f6,a6, a6e, a6e, f6e,f6e,'b.','DisplayName', '')
errorbar(f8,a8, a8e, a8e, f8e,f8e,'m.','DisplayName', '')

plot(f, beta1,'--g')
plot(f, beta4,'--r')
plot(f, beta6,'--b')
plot(f, beta8,'--m')
legend('','','','', 'No Dampening','Dampening at 4', 'Dampening at 6', 'Dampening at 8')

ax = gca;

exportgraphics(ax,'./images/forzado.jpg');

