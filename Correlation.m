clc;
clear all;
close all;

t1 = 0:0.05:1;     
t2 = 1:0.05:2;     
x1 = t1;           
x2 = t2.^2;        
y = t2.^(-3);       


[x1x2, rezultat1] = xcorr(x1, x2);  
[x1y, rezultat2] = xcorr(x1, y);    
[x2y, rezultat3] = xcorr(x2, y);   

corelatie_totala = x1x2 + x1y + x2y;

t_corelatie_totala = (-length(corelatie_totala)/2 : length(corelatie_totala)/2 - 1) * 0.05;

figure;

subplot(7, 1, 1);
stem(t1, x1);
axis(); grid; title('x1(t)');

subplot(7, 1, 2);
stem(t2, x2);
axis(); grid; title('x2(t)');

subplot(7, 1, 3);
stem(t2, y);
axis(); grid; title('y(t)');

subplot(7, 1, 4);
stem(rezultat1, x1x2);
axis(); grid; title('x1x2 = x1*x2');

subplot(7, 1, 5);
stem(rezultat2, x1y);
axis(); grid; title('x1y = x1*y');

subplot(7, 1, 6);
stem(rezultat3, x2y);
axis(); grid; title('x2y = x2*y');

subplot(7, 1, 7);
stem(t_corelatie_totala, corelatie_totala);
axis(); grid; title('Corelatia totala');
