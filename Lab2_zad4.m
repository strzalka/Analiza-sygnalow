%%%%%%%%%%%%%%  FILTRY IIR %%%%%%%%%%%%%%%%%
% dolnoprzepustowy
m1=[1 1 0 0];
f1=[0 15/120 20/120 1];
[b1,a1]=yulewalk(10,f1,m1);
[h1,w1]=freqz(b1,a1,128);
subplot(3,2,1), plot(f1,m1,'black-',w1/pi,abs(h1),'black:'), title('IIR')

% œrodkowoprzepustowy
m2=[ 0 0 1 1 0 0 ];
f2=[0 0.55 0.6 0.75 0.8 1];
[b2,a2]=yulewalk(10,f2,m2);
[h2,w2]=freqz(b2,a2,128);
subplot(3,2,3),plot(f2,m2,'black-',w2/pi,abs(h2),'black:')

% górnoprzepustowy
m3=[0 0 1 1];
f3=[0 100/120 110/120 1];
[b3,a3]=yulewalk(10,f3,m3);
[h3,w3]=freqz(b3,a3,128);
subplot(3,2,5), plot(f3,m3,'black-',w3/pi,abs(h3),'black:')

%%%%%%%%%%%%%%  FILTRY IIR %%%%%%%%%%%%%%%%%

%dolnoprzepustowy 
n=50;
Wn=15/120;
b1=fir1(n,Wn);
[H1,w1]=freqz(b1,1,512,2); 
subplot(3,2,2), plot(w1,abs(H1),'black'),title('FIR')

%œrodkowoprzepustowy
n=50;
f2=[0 0.55 0.6 0.75 0.8 1];
m2=[ 0 0 1 1 0 0];
b2=fir2(n,f2,m2); 
[H2,w2]=freqz(b2,1,512,2); 
subplot(3,2,4), plot(w2,abs(H2),'black'),

%górnoprzepustowy

n3=20;
f3=[0 100/120 110/120 1];
m3=[0 0 1 1];
b3=firls(n3,f3,m3);
[H3,w3]=freqz(b3,1,512,2); 
subplot(3,2,6), plot(w3,abs(H3),'black'),
