clear all; close all; clc

% Practica 0: Campo de pendientes

[T,X] = meshgrid(-2:0.5:2,-2:0.5:2);
dT = ones(size(T));

% Ecuacion diferencial
dX = 1 - 3*T + X + T.^2 + T.*X;

% Graficas
figure(1)
N = sqrt(dT.^2 + dX.^2);
quiver(T,X,dT/N,dX/N); 
hold on
t = -1:0.01:1;
x1 = tan(t);
plot(t,x1, 'r-')
legend('Campo de Pendientes','Solucion')
xlabel('t')
ylabel('x')
hold off