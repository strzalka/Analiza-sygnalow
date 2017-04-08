f1 = 10; 
f2 = 80;
f3 = 120;
A1=1;
A2=3;
A3=1;
fs1 = 240; % Czêstotliwoœæ próbkowania sygna³u 
t=0:(1/fs1):1; % Wektor czasu

x1 = A1*sin(2*pi*f1*t);
x2 = A2*sin(2*pi*f2*t+pi/9);
x3 = A3*sin(2*pi*f3*t-pi/9);

x=x1+x2+x3;

plot(t,x);