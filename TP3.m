
% Cantidad de Muestras
Nx = 301;

% Periodo de Muestreo
dt = 0.0001;



% Rango de Muestreo (Inicia en 0 y termina en La cantidad de muestras -1)
% (Recordar que el 0 cuenta)
t = 0:dt:(Nx-1)*dt;

% x[n]


x = 5*cos(2* pi *100*t) - 3*sin(2*pi*1500*t);
n = 0:Nx-1;

% Frecuencia de Corte
Fc = 800;



% Cantidad de Muestras
Nh = 101;

% dt es igual al usado en el muestreo

% Valores no nulos del Vector
M = (Nh-1)/2;
m = -M:M;

% h[n]
h=2*Fc*dt*sinc(2*Fc*dt*m);


% Calculamos el N ACLARAR MEJORQUIE ES EL N ASDFKJSFLASDJKLASDKLA JKKFLASDKLFASDFKLÑSAJFÑLKSAJKLJFSDJJ FASLÑJASDÑFFSDJL
for i=1:16
  if(2^i > Nx+Nh)
    N = 2^i
    break
  endif
endfor

disp(N)


% y[n]
% Calculamos X y H y luego multiplicamos y volvemos al tiempo
xN = [x,zeros(1,N-Nx)]
X = fft(xN)

hN = [h, zeros(1,N-Nh)]
H = fft(hN)

Y = X .* H
y = ifft(Y)
% ny = ((n(1)+m(1)):(n(end)+m(end)));

disp(['ola',num2str(length(X))])
ny = length(X) + length(H)-1
% Escalas
a = min([n m ny]);
b = max([n m ny]);


% Graficos
figure('Name', 'TP2', 'NumberTitle', 'off');


% Primer Grafico
subplot(3,1,1);
stem(n, x, 'r');
legend('x[n]');
title('Señal de entrada discreta x[n]');
set(gca, 'FontSize', 12);
xlabel('n');
ylabel('x[n]');
grid on;
xlim([a,b])

% Segundo Grafico
subplot(3,1,2);
stem(m, h, 'b');
legend('h[n]');
title('Respuesta al impulso h[n]');
set(gca, 'FontSize', 12);
xlabel('n');
ylabel('h[n]');
grid on;
xlim([a,b])


% Tercer Grafico
subplot(3,1,3);
stem(n, y, 'm');
legend('y[n] = x[n] * h[n]');
title('Salida del sistema y[n] = x[n] * h[n]');
set(gca, 'FontSize', 12);
xlabel('n');
ylabel('y[n]');
grid on;
xlim([a,b])
