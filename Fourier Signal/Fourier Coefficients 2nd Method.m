% a. Generarea semnalului
t1 = linspace(0, 1, 1000);
x1 = t1;

t2 = linspace(1, 2, 1000);
x2 = ones(size(t2));

t3 = linspace(2, 3, 1000);
x3 = -t3 + 3;

t = [t1, t2, t3];
x = [x1, x2, x3];

figure;
plot(t, x, 'LineWidth', 2);
title('Semnal x(t)');
xlabel('Timp (t)');
ylabel('Amplitudine');
grid on;

% b. Exprimarea analitică a seriei Fourier
syms t;
T = 3; % Perioada semnalului

x_analitic = piecewise(0 <= t < 1, t, 1 <= t < 2, 1, 2 <= t <= 3, -t + 3);

% c. Implementarea codului pentru seria Fourier
N = 10; % Numărul de armonici
a0 = (1/T) * trapz(t, double(x_analitic));

ak = zeros(1, N);
bk = zeros(1, N);

for k = 1:N
    ak(k) = (2/T) * trapz(t, double(x_analitic * cos(2*pi*k/T*t)));
    bk(k) = (2/T) * trapz(t, double(x_analitic * sin(2*pi*k/T*t)));
end

% d. Generarea și reprezentarea grafică a sumei Fourier pentru diferite numere de armonici
harmonics = [2, 4, 7, 10];

figure;
hold on;

for i = 1:length(harmonics)
    N = harmonics(i);
    x_Fourier = a0/2;

    for k = 1:N
        x_Fourier = x_Fourier + ak(k) * cos(2*pi*k/T*t) + bk(k) * sin(2*pi*k/T*t);
    end

    subplot(2, 2, i);
    plot(t, x_Fourier, 'r', 'LineWidth', 2);
    title(['Suma Fourier cu ', num2str(N), ' armonici']);
    xlabel('Timp (t)');
    ylabel('Amplitudine');
end

hold off;
