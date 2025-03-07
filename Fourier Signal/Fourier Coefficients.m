
clc;
clear all;
close all;

t1 = 0:0.0001:1;   
t2 = 1:0.0001:2;   
t3 = 2:0.0001:3;   

x1 = t1;
x2 = ones(size(t2));
x3 = -t3 + 3;

t = [t1, t2, t3];
x = [x1, x2, x3];

figure;
plot(t, x, 'LineWidth', 2);
title('Semnal x(t)');
xlabel('Timp (s)');
ylabel('Amplitudine');
grid on;

T = 3;  
N = 2;  

a0 = (1/T) * trapz(t, x);  
ak = zeros(1, N); 
bk = zeros(1, N); 

for k = 1:N 
    ak(k) = (2/T) * trapz(t, x .* cos(2*pi*k/T*t));
    bk(k) = (2/T) * trapz(t, x .* sin(2*pi*k/T*t));
end

t_fourier = linspace(0, 3, 1000); 
x_fourier = a0/2; 

for k = 1:N
    x_fourier = x_fourier + ak(k) * cos(2*pi*k/T*t_fourier) + bk(k) * sin(2*pi*k/T*t_fourier);
end

figure;
subplot(4, 1, 1);
plot(t_fourier, x_fourier);
title('Serie Fourier cu 2 coeficieni');
xlabel('Timp (s)');
ylabel('Amplitudine');
grid on;

N = 4;

a0 = (1/T) * trapz(t, x);
ak = zeros(1, N);
bk = zeros(1, N);

for k = 1:N
    ak(k) = (2/T) * trapz(t, x .* cos(2*pi*k/T*t));
    bk(k) = (2/T) * trapz(t, x .* sin(2*pi*k/T*t));
end

t_fourier = linspace(0, 3, 1000);
x_fourier = a0/2;

for k = 1:N
    x_fourier = x_fourier + ak(k) * cos(2*pi*k/T*t_fourier) + bk(k) * sin(2*pi*k/T*t_fourier);
end

subplot(4, 1, 2);
plot(t_fourier, x_fourier);
title('Serie Fourier cu 4 coeficieni');
xlabel('Timp (s)');
ylabel('Amplitudine');
grid on;

N = 7;

a0 = (1/T) * trapz(t, x);
ak = zeros(1, N);
bk = zeros(1, N);

for k = 1:N
    ak(k) = (2/T) * trapz(t, x .* cos(2*pi*k/T*t));
    bk(k) = (2/T) * trapz(t, x .* sin(2*pi*k/T*t));
end

t_fourier = linspace(0, 3, 1000);
x_fourier = a0/2;

for k = 1:N
    x_fourier = x_fourier + ak(k) * cos(2*pi*k/T*t_fourier) + bk(k) * sin(2*pi*k/T*t_fourier);
end

subplot(4, 1, 3);
plot(t_fourier, x_fourier);
title('Serie Fourier cu 7 coeficieni');
xlabel('Timp (s)');
ylabel('Amplitudine');
grid on;

N = 10;

a0 = (1/T) * trapz(t, x);
ak = zeros(1, N);
bk = zeros(1, N);

for k = 1:N
    ak(k) = (2/T) * trapz(t, x .* cos(2*pi*k/T*t));
    bk(k) = (2/T) * trapz(t, x .* sin(2*pi*k/T*t));
end

t_fourier = linspace(0, 3, 1000);
x_fourier = a0/2;

for k = 1:N
    x_fourier = x_fourier + ak(k) * cos(2*pi*k/T*t_fourier) + bk(k) * sin(2*pi*k/T*t_fourier);
end

subplot(4, 1, 4);
plot(t_fourier, x_fourier);
title('Serie Fourier cu 10 coeficieni');
xlabel('Timp (s)');
ylabel('Amplitudine');
grid on;
