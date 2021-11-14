A = importdata('a.csv');
B = importdata('b.csv');
C = importdata('c.csv');
D = importdata('d.csv');

a2 = A(:,1);
a2er = A(:,2);
a1 = A(:,3);
a1er = A(:,4);
b2 = B(:,1);
b2er = B(:,2);
b1 = B(:,3);
b1er = B(:,4);
x = linspace(0,0.20,1000);
c2 = C(:,1);
c2er = C(:,2);
c1 = C(:,3);
c1er = C(:,4);

d2 = D(:,1);
d2er = D(:,2);
d1= D(:,3);
d1er = D(:,4);
%%Getting data from .csv. Maybe should've used for loops, but I don't wanna
%%remember how actually mess with matrices.
tiledlayout(2,2)
%first
nexttile
hold on
errorbar(a1,a2,a2er,a2er,a1er,a1er, '.')
xlabel('\omega^{-1}(s)')
ylabel('\Omega(Hz)')
plot(x,polyval(polyfit(a1,a2,1),x))
xlim([0.05 0.17])
title('d = -2.13 cm')
hold off

%second
nexttile
hold on
errorbar(b1,b2,b2er,b2er,b1er,b1er, '.')
plot(x,polyval(polyfit(b1,b2,1),x))
xlim([0.08 0.18])
xlabel('\omega^{-1}(s)')
ylabel('\Omega(Hz)')
title('d = -0.73 cm')
hold off

%third

nexttile
hold on
errorbar(c1,c2,c2er,c2er,c1er,c1er, '.')
plot(x,polyval(polyfit(c1,c2,1),x))
xlim([0.08 0.17])
xlabel('\omega^{-1}(s)')
ylabel('\Omega(Hz)')
title('d = 1.68 cm')
hold off

%fourth
nexttile
hold on
errorbar(d1,d2,d2er,d2er,d1er,d1er, '.')
plot(x,polyval(polyfit(d1,d2,1),x))
xlim([0.05 0.16])
xlabel('\omega^{-1}(s)')
ylabel('\Omega(Hz)')
title('d = 2.25 cm')
hold off


ax = gca;

exportgraphics(ax,'part1.jpg');


