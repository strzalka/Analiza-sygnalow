fs = 64; % Czêstotliwoœæ próbkowania sygna³u
t=0:(1/fs):1; % Wektor czasu

% Utworzenie okresowego przebiegu prostok¹tnego
ind = round(fs/4);
x = zeros(size(t));
x(1:ind) = 1;

% Pobranie od analizy czterech okresów przebiegu
t=[t,t(end)+t,2*t(end)+t,3*t(end)+t];
x=[x,x,x,x];

% Wyplotowanie przebiegu
subplot(1,2,1), plot(t,x), title('przebieg prostok¹tny')



%Dokonanie transformaty Fouriera dla przebiegu
y = fft(x);
%Wyznaczenie wektora czêstotliwoœci
f = (0:length(y)-1)'*fs/length(y);

% Narysowanie postaci czêstotliwoœciowej sygna³u dla dodatnich
% czêstotliwoœci
ind=find(f<=fs/2);
subplot(1,2,2), plot(f(ind),abs(y(ind)))
pause;

% Transformacja Fouriera impulsu jednostkowego
fs = 128; % Czêstotliwoœæ próbkowania sygna³u
t=0:(1/fs):1; % Wektor czasu
x=zeros(size(t));
x(3)=2;

% Wyplotowanie przebiegu
subplot(1,2,1),plot(t,x), title('impuls jednostkowy')

%Dokonanie transformaty Fouriera dla przebiegu
y = fft(x);
% Wyznaczenie wektora czêstotliwoœci
f = (0:length(y)-1)'*fs/length(y);

% Narysowanie postaci czêstotliwoœciowej sygna³u dla dodatnich
% czêstotliwoœci
ind=find(f<=fs/2);
subplot(1,2,2), plot(f(ind),abs(y(ind)))
set(gca,'ylim',[0,2.2])
pause;


% Dwa impulsy w bliskiej odleg³oœci

fs = 128; % Czêstotliwoœæ próbkowania sygna³u
t=0:(1/fs):1; % Wektor czasu
x=zeros(size(t));

x(3)=2;
x(5)=2;

subplot(1,2,1), plot(t,x), title('2 impulsy')

y=fft(x);
f = (0:length(y)-1)'*fs/length(y);
ind=find(f<=fs/2);
subplot(1,2,2), plot(f,abs(y))
set(gca,'ylim',[0,2.2]);
pause;

%Szum losowy 
fs = 128; % Czêstotliwoœæ próbkowania sygna³u
t=0:(1/fs):1; % Wektor czasu

x=randn(129,1);
subplot(1,2,1), plot(t,x), title('szum losowy')

y=fft(x);
f = (0:length(y)-1)'*fs/length(y);
ind=find(f<=fs/2);
subplot(1,2,2), plot(f,abs(y))
pause;

% Skok jednostkowy

fs = 128; % Czêstotliwoœæ próbkowania sygna³u
t=0:(1/fs):1; % Wektor czasu

x=ones(129,1);
x(1)=0;
subplot(1,2,1), plot(t,x), title('skok jednostkowy')

y=fft(x);
f = (0:length(y)-1)'*fs/length(y);
ind=find(f<=fs/2);
subplot(1,2,2), plot(f,abs(y))
pause;

%Przebieg trójk¹tny 

fs = 128; % Czêstotliwoœæ próbkowania sygna³u
t=0:(1/fs):1; % Wektor czasu

x=zeros(1,129);
znak=1;
x(1)=0;
x(2)=1;
for i=3:129
    if x(i-1)==25 
       znak = -1;  
    elseif x(i-1)==0
       znak =1;
    end
    x(i)=x(i-1)+znak;   
end

subplot(1,2,1), plot(t,x), title('przebieg trojkatny')

y=fft(x);
f = (0:length(y)-1)'*fs/length(y);
ind=find(f<=fs/2);
subplot(1,2,2), plot(f,abs(y))
pause;





