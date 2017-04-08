f1 = 10; 
f2 = 80;
f3 = 120;
A1=1;
A2=3;
A3=1;
fs = 240; % Częstotliwość próbkowania sygnału 
t=0:(1/fs):0.1; % Wektor czasu

x1 = A1*sin(2*pi*f1*t);
x2 = A2*sin(2*pi*f2*t+pi/9);
x3 = A3*sin(2*pi*f3*t-pi/9);

x=x1+x2+x3;

y=fft(x);
m=abs(y);
p=unwrap(angle(y));
f=(0:length(y)-1)'*fs/length(y);

y2=ifft(y);


subplot(1,2,1), plot(t,x)
subplot(1,2,2), plot(t,y2) 