f1 = 10; 
f2 = 80;
f3 = 120;
f4 = 12;
f5 = 81;
A1=1;
A2=3;
A3=1;
A4=1;
A5=1;

fs = 240; % Czêstotliwoœæ próbkowania sygna³u 
t=0:(1/fs):1; % Wektor czasu

x1 = A1*sin(2*pi*f1*t);
x2 = A2*sin(2*pi*f2*t+pi/9);
x3 = A3*sin(2*pi*f3*t-pi/9);
x4 = A4*sin(2*pi*f4*t);
x5 = A5*sin(2*pi*f5*t);

x=x1+x2+x3+x4+x5;

plot(t,x);

y=fft(x);
m=abs(y);
p=unwrap(angle(y));
f=(0:length(y)-1)'*fs/length(y);
subplot(1,2,1), plot(f,m,'black')
subplot(1,2,2), plot(f,p*180/pi,'black') 
pause

% Zastosowanie okna prostok¹tnego 
y = fft(x);
f = (0:length(y)-1)'*fs/length(y);
ind=find(f<=fs/2);
f1=f(ind); am1 = 20*log10(abs(y(ind)));
plot(f1,am1), title('Okno prostokatne')
pause;
% Zastosowanie okna Hanninga 
w = hanning(length(x));
y = fft(x'.*w);
ind=find(f<=fs/2);
f2=f(ind); am2 = 20*log10(abs(y(ind)/norm(w)));
plot(f2,am2), title('Okno Hanninga')
pause;
% Zastosowanie okna Hamminga 
w = hamming(length(x));
y = fft(x'.* w);
ind=find(f<=fs/2);
f3=f(ind); am3 = 20*log10(abs(y(ind)/norm(w)));
plot(f3,am3), title('Okno Hamminga')
pause;
% Zastosowanie okna Kaisera 
w = kaiser(length(x),6);
y = fft(x'.* w);
ind=find(f<=fs/2);
f4=f(ind); am4 = 20*log10(abs(y(ind)/norm(w)));
plot(f4,am4), title('Okno Kaisera')
pause;
% Zastosowanie okna Chebyshewa 
w = chebwin(length(x),40);
y = fft(x'.* w);
ind=find(f<=fs/2);
f5=f(ind); am5 = 20*log10(abs(y(ind)/norm(w)));
plot(f5,am5), title('Okno Chebyshewa')