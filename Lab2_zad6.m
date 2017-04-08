f1 = 10; 
f2 = 80;
f3 = 120;
A1=1;
A2=3;
A3=1;
fs1 = 1000; % Czêstotliwoœæ próbkowania sygna³u 
t=0:(1/fs1):1; % Wektor czasu

x1 = A1*sin(2*pi*f1*t);
x2 = A2*sin(2*pi*f2*t+pi/9);
x3 = A3*sin(2*pi*f3*t-pi/9);
x4=0.1*randn(1,fs1+1);

x=x1+x4;

m1=[1 1 0 0];
f1=[0 15/120 20/120 1];
[b1,a1]=yulewalk(10,f1,m1);

y1=filter(b1,a1,x);
y2=filtfilt(b1,a1,x);

plot(t,x, 'r', t,y1,'g', t,y2,'b');
