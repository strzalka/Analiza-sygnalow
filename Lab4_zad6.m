f1 = 11; 
fs1 = 200; % Czêstotliwoœæ próbkowania sygna³u 
t1=0:(1/fs1):1; % Wektor czasu
t2=0:(1/fs1):0.95;
x1 = A1*sin(2*pi*f1*t1);
x2 = A1*sin(2*pi*f1*t2);

y1=fft(x1);
y2=fft(x2);

m1=abs(y1);
p1=unwrap(angle(y1));
f1=(0:length(y1)-1)'*fs1/length(y1);
subplot(1,2,1), plot(f1,m1,'black')
m2=abs(y2);
p2=unwrap(angle(y2));
f2=(0:length(y2)-1)'*fs1/length(y2);
subplot(1,2,2), plot(f2,m2,'black')
