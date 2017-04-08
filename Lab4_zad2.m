f1 = 10; 
f2 = 80;
f3 = 120;
A1=1;
A2=3;
A3=1;
fs = 240; % Czêstotliwoœæ próbkowania sygna³u 
t=0:(1/fs):1; % Wektor czasu

x1 = A1*sin(2*pi*f1*t);
x2 = A2*sin(2*pi*f2*t+pi/9);
x3 = A3*sin(2*pi*f3*t-pi/9);

x=x1+x2+x3;

plot(t,x);

y=fft(x);
m=abs(y);
p=unwrap(angle(y));
f=(0:length(y)-1)'*fs/length(y);
subplot(1,2,1), plot(f,m,'black')
subplot(1,2,2), plot(f,p*180/pi,'black') 