f1 = 1; % Czêstotliwoœci przyk³adowych przebiegów sinusoidalnych
f2 = 4;
f3 = 6;
fs1 = 200; % Czêstotliwoœæ próbkowania sygna³u 
t=0:(1/fs1):1; % Wektor czasu
% Definicje przyk³adowych przebiegów sinusoidalnych
x1 = sin(2*pi*f1*t);
x4 = -sin(2*pi*f2*t);
x6 = sin(2*pi*f3*t);

fs2 = 5; % Czêstotliwoœæ próbkowania sygna³u 
t2=0:(1/fs2):1; % Wektor czasu
x12 = sin(2*pi*f1*t2);
x42 = -sin(2*pi*f2*t2);
x62 = sin(2*pi*f3*t2);

fs3 = 20; % Czêstotliwoœæ próbkowania sygna³u 
t3=0:(1/fs3):10; % Wektor czasu
x = sin(2*pi*40*t3);




subplot(3,1,1), plot(t,x1,t,x4,t,x6)
subplot(3,1,2), plot(t2,x12,t2,x42,t2,x62)
subplot(3,1,3), plot(t3,x)

