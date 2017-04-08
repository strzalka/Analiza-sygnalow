f1 = 11; 
fs1 = 200; % Czêstotliwoœæ próbkowania sygna³u 
t1=0:(1/fs1):1; % Wektor czasu
t2=0:(1/fs1):0.95;
x1 = A1*sin(2*pi*f1*t1);
x2 = A1*sin(2*pi*f1*t2);

y1=fft(x1);
y2=fft(x2);


w = hanning(length(x1));
y = fft(x'.*w);
ind=find(f<=fs/2);
f2=f(ind); 
am2 = 20*log10(abs(y(ind)/norm(w)));
subplot(2,1,1),plot(f2,am2)

w2 = hanning(length(x2));
y2 = fft(x2'.*w2);
ind2=find(f<=fs/2);
f3=f(ind); 
am3 = 20*log10(abs(y2(ind2)/norm(w2)));
subplot(2,1,2),plot(f3,am3)