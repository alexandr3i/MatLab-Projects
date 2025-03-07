clc;
clear all;
close all;

t1 = 0:0.01:1; 
t2 = 1:0.01:2;
t3 = 1:0.01:2;

x1 = t1;      
x2 = t2.^2;                   
y = t3.^(-3);          

rez = conv(x1, x2);             
rez_fin = conv(rez, y);    


t_conv_1 = (t1(1) + t2(1)):0.01:(t1(end) + t2(end));  
t_conv_2 = (t_conv_1(1) + t3(1)):0.01:(t_conv_1(end) + t3(end));  

figure;

subplot(4, 1, 1);
plot(t1, x1);
title('x1(t) = t, t∈[0,1]');

subplot(4, 1, 2);
plot(t2, x2);
title('x2(t) = t^2, t∈(1,2]');

subplot(4, 1, 3);
plot(t3, y);
title('y(t) = t^(^-^3^), t∈[1,2]');

subplot(4, 1, 4);
plot(t_conv_2, rez_fin);
title('Convoluția semnalelor');
