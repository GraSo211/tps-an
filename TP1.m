% Limpiar variables y pantalla
clc;
clear;
close all;

% Escalas
a = 0
b = 15

% x[n]
%xInf = input('Ingrese el valor del limite inferior del intervalo nx: ');
%xSup = input('Ingrese el valor del limite superior del intervalo nx: ');


%x = [];
%nx = (xInf : xSup);
x = [4 6 4];
nx = (1:3);


% h[n]
h = [2,6];
nh = (7:8);


% Convolucion
y = conv(x,h);
ny = (nx[1]+nh[1]:nx[end]+nh[end]);




figure();
subplot(3,1,1);
g1 = stem(nx,x);
set(g1,'Color','red')
title('Grafico x[n]')
xlim([a,b])

subplot(3,1,2);
g2 = stem(nh,h);
set(g2,'Color','blue')
title('Grafico h[n]')
xlim([a,b])

subplot(3,1,3);
g3 = stem(ny, y);
set(g3,'Color','magenta');
title('Grafico y')
xlim([a,b])
