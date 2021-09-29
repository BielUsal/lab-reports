omega0 = 1;
f = linspace(0,2,1000);
alpha = 1;
alpha4 =1;
alpha6 =1;
alpha8 =1;
gamma1 = 0;
gamma4 = 0.07;
gamma6 = 0.09;
gamma8 = 0.11;
beta1 =((omega0^2-f.^2).^2 + 4*gamma1^2*f.^2).^(-1);
beta4 = alpha4*((omega0^2-f.^2).^2 + 4*gamma4^2*f.^2).^(-1);
beta6 = alpha6*((omega0^2-f.^2).^2 + 4*gamma6^2*f.^2).^(-1);
beta8 = alpha8*((omega0^2-f.^2).^2 + 4*gamma8^2*f.^2).^(-1);

plot(f, beta1,'g')
hold on
plot(f, beta4)
plot(f, beta6)
plot(f, beta8)

ylim([0 90])
xlim([0.8 1.2])
xlabel('\Omega/\omega_0')
ylabel('\beta/\alpha_0')
legend('\gamma = 0','\gamma = 0.07', '\gamma = 0.09', '\gamma = 0.11')

ax = gca;

exportgraphics(ax,'./images/ilustración.jpg');