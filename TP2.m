Nx = 301
dt = 0.0001
t = 0:dt:(Nx-1)*dt

xt = -5*cos(1* pi *100*t) + 3*sin(2*pi*1500*t)


n = 0:Nx-1;
stem(n, xt)
xlabel('n')
ylabel('x[n]')
title('Señal discreta x[n]')
