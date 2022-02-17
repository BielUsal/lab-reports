s = i *2*pi * linspace(1, 1000000, 10000);
t = 1;
k =1;

T = abs(t./(1.+s*k));


plot(log(abs(s)),log(T));