clc
clear all;
close all;

x=linspace(0,2.5,2000)
f=0;
k=0;

X=[0, 0, 0.5, 0.5, 1.0, 1.0, 1.5, 1.5, 2, 2, 2.5, 2.5];
Y=[0,1,1,-1,-1,1,1,-1,-1,1,1,0];

figure (1)

for n=1:2:17
    k=k+1;
    f=f+(4/(n*pi))*sin(2*pi*n*x);
    error=mean((abs(f)-1.^2));

    subplot(3,3,k), line(X,Y, 'color', 'r', 'linewidth', 2)
    hold on;
    subplot(3,3,k), plot(x, f, 'k', 'LineWidth',2)
    title(['n=', num2str(n), 'eroare=', num2str(error)]),grid
end