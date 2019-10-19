%--------------------------------A þýkký--------------------------------
%--------------------------------A þýkký--------------------------------
%--------------------------------A þýkký--------------------------------

%Temel bileþene ait parametrelerin, örtüþen pencereleme aracýlýðýyla 
%5 sn’lik toplam
%kayýt süresi içerisindeki deðiþimlerinin incelenmesi,


%ÖNEMLÝ NOT!
%tek bir m file içinde section olarak ayrýlmýþ bölümler vardýr. a þýkkýnýn
%section'ý b'nin c'nin d'nin e'nin sectionlarý section baþýnda
%belirtilmiþtir.
clear all       
clc


[x,fs] = audioread('u_harfi.wav');%u_harfi.wav dosyasýndan ses dosyasýný x denklemi ve fs frekanslarný elde ettik
t=(0:length(x)-1)/fs;%zaman çizelgesini oluþturduk
figure(1)
plot(t,x);%t ve x in grafiðini çizdik
title('Waveform');
xlabel('Time (s)');
ylabel('Amplitude');



%buraya kadar 6 saniyelik ses dosyasýnýn frekans ve x dogrultusundaki
%görüntüsün elde ettik


%elimizdeki x sinyalini fft komutuyla fourier transformunu aldýk
y = fft(x); %x in fourier transformunu aldýk
f = (0:length(y)-1).*fs/length(y);%frekansý çýkardýk
%çizdirdik
figure(2)
plot(f,abs(y))
title('Magnitude db')
xlabel('frequency');
ylabel('magnitude db')


%tek taraf
freq = 0:fs/length(x):fs/2;
y = y(1:length(x)/2+1);
figure(3)
plot(freq,abs(y))
title('tek taraflý')
xlabel('frequency');
ylabel('magnitude db')
[genlik,fundamental_freq] = max(abs(y));


%a þýkký temel frekans
temel=freq(fundamental_freq)  
genlik



%---------------------------------B ÞIKKI---------------------------------
%---------------------------------B ÞIKKI---------------------------------
%---------------------------------B ÞIKKI---------------------------------
%Diðer bileþenlere ait (2. ve 3. harmonik) parametrelerin, , örtüþen pencereleme
%aracýlýðýyla 5 sn’lik toplam kayýt süresi içerisindeki deðiþimlerinin incelenmesi,

%takip eden formant frekanslarý

ncoeff=2+fs/1000;
a=lpc(x,ncoeff);

vector=a(:);

r=roots(vector);
r=r(imag(r)>0.01);       
ffreq=sort(atan2(imag(r),real(r))*fs/(2*pi));

fprintf('Formant %d Frequency %.1f\n',1,ffreq(1));
fprintf('Formant %d Frequency %.1f\n',2,ffreq(2));
fprintf('Formant %d Frequency %.1f\n',3,ffreq(3));


%%
%--------------------------------D ÞIKKI----------------------------------
%--------------------------------D ÞIKKI----------------------------------
%--------------------------------D ÞIKKI----------------------------------
%Grup elemanlarýnýn her birine ait 5 sn’lik sesli harf kayýtlarý için; 
%a ve b þýklarýndaki uygulamalarýn yapýlmasý,

%Yiðithan Taþkýn'ýn sesini iþleme
clear all       
clc


[x,fs] = audioread('u_yigithan.wav');%u_harfi.wav dosyasýndan ses dosyasýný x denklemi ve fs frekanslarný elde ettik
t=(0:length(x)-1)/fs;%zaman çizelgesini oluþturduk
figure(1)
plot(t,x);%t ve x in grafiðini çizdik
title('Waveform');
xlabel('Time (s)');
ylabel('Amplitude');



%buraya kadar 6 saniyelik ses dosyasýnýn frekans ve x dogrultusundaki
%görüntüsün elde ettik


%elimizdeki x sinyalini fft komutuyla fourier transformunu aldýk
y = fft(x); %x in fourier transformunu aldýk
f = (0:length(y)-1).*fs/length(y);%frekansý çýkardýk
%çizdirdik
figure(2)
plot(f,abs(y))
title('Magnitude db')
xlabel('frequency');
ylabel('magnitude db')


%tek taraf
freq = 0:fs/length(x):fs/2;
y = y(1:length(x)/2+1);
figure(3)
plot(freq,abs(y))
title('tek taraflý')
xlabel('frequency');
ylabel('magnitude db')
[genlik,fundamental_freq] = max(abs(y));


%a þýkký temel frekans
temel=freq(fundamental_freq)  %this is frequency corresponding to max value
genlik


%takip eden formant frekanslarý

ncoeff=2+fs/1000;
a=lpc(x,ncoeff);

vector=a(:);

r=roots(vector);
r=r(imag(r)>0.01);       
ffreq=sort(atan2(imag(r),real(r))*fs/(2*pi));

fprintf('Formant %d Frequency %.1f\n',1,ffreq(1));
fprintf('Formant %d Frequency %.1f\n',2,ffreq(2));
fprintf('Formant %d Frequency %.1f\n',3,ffreq(3));

%%
%--------------------------------D ÞIKKI----------------------------------
%--------------------------------D ÞIKKI----------------------------------
%--------------------------------D ÞIKKI----------------------------------
%Grup elemanlarýnýn her birine ait 5 sn’lik sesli harf kayýtlarý için; 
%a ve b þýklarýndaki uygulamalarýn yapýlmasý,

%Andaç Bingöl ses iþleme
clear all       
clc


[x,fs] = audioread('u_andac.wav');%u_harfi.wav dosyasýndan ses dosyasýný x denklemi ve fs frekanslarný elde ettik
t=(0:length(x)-1)/fs;%zaman çizelgesini oluþturduk
figure(1)
plot(t,x);%t ve x in grafiðini çizdik
title('Waveform');
xlabel('Time (s)');
ylabel('Amplitude');



%buraya kadar 6 saniyelik ses dosyasýnýn frekans ve x dogrultusundaki
%görüntüsün elde ettik


%elimizdeki x sinyalini fft komutuyla fourier transformunu aldýk
y = fft(x); %x in fourier transformunu aldýk
f = (0:length(y)-1).*fs/length(y);%frekansý çýkardýk
%çizdirdik
figure(2)
plot(f,abs(y))
title('Magnitude db')
xlabel('frequency');
ylabel('magnitude db')


%tek taraf
freq = 0:fs/length(x):fs/2;
y = y(1:length(x)/2+1);
figure(3)
plot(freq,abs(y))
title('tek taraflý')
xlabel('frequency');
ylabel('magnitude db')
[genlik,fundamental_freq] = max(abs(y));


%a þýkký temel frekans
temel=freq(fundamental_freq)  %this is frequency corresponding to max value
genlik


%takip eden formant frekanslarý

ncoeff=2+fs/1000;
a=lpc(x,ncoeff);

vector=a(:);

r=roots(vector);
r=r(imag(r)>0.01);       
ffreq=sort(atan2(imag(r),real(r))*fs/(2*pi));

fprintf('Formant %d Frequency %.1f\n',1,ffreq(1));
fprintf('Formant %d Frequency %.1f\n',2,ffreq(2));
fprintf('Formant %d Frequency %.1f\n',3,ffreq(3));





%%
%-----------------------------E ÞIKKI-------------------------------------
%-----------------------------E ÞIKKI-------------------------------------
%-----------------------------E ÞIKKI-------------------------------------
%Bu iþlemlerin farklý gürültü tip ve þiddetlerinde (SNR deðerleri) tekrarlanmasý

%gürültü ekleme snr 10 degeri icin

clear all       
clc


[x,fs] = audioread('u_harfi.wav');%a_harfi.wav dosyasýndan ses dosyasýný x denklemi ve fs frekanslarný elde ettik
t=(0:length(x)-1)/fs;%zaman çizelgesini oluþturduk

snr=10;%gürültü deðerimiz. 

gurultu=awgn(x,snr,'measured');


figure(1)
plot(t,x);%t ve x in grafiðini çizdik
title('Waveform');
xlabel('Time (s)');
ylabel('Amplitude');

figure (2)
plot(t,gurultu);
title('Waveform with snr');
xlabel('Time (s)');
ylabel('Amplitude');


%buraya kadar 6 saniyelik ses dosyasýnýn frekans ve x dogrultusundaki
%görüntüsün elde ettik


%elimizdeki x sinyalini fft komutuyla fourier transformunu aldýk
y = fft(gurultu); %x in fourier transformunu aldýk
f = (0:length(y)-1).*fs/length(y);%frekansý çýkardýk
%çizdirdik
figure(3)
plot(f,abs(y))
title('Magnitude db')
xlabel('frequency');
ylabel('magnitude db')



%tek taraf
freq = 0:fs/length(gurultu):fs/2;
y = y(1:length(gurultu)/2+1);
figure(4)
plot(freq,abs(y))
title('tek taraflý')
xlabel('frequency');
ylabel('magnitude db')
[genlik,fundamental_freq] = max(abs(y));

%a þýkký temel frekans
temel=freq(fundamental_freq)  
genlik

%takip eden formant frekanslarý

ncoeff=2+fs/1000;
a=lpc(gurultu,ncoeff);

vector=a(:);

r=roots(vector);
r=r(imag(r)>0.01);       
ffreq=sort(atan2(imag(r),real(r))*fs/(2*pi));

fprintf('Formant %d Frequency %.1f\n',i,ffreq(1));
fprintf('Formant %d Frequency %.1f\n',i,ffreq(2));
fprintf('Formant %d Frequency %.1f\n',i,ffreq(3));

%%
%-----------------------------E ÞIKKI-------------------------------------
%-----------------------------E ÞIKKI-------------------------------------
%-----------------------------E ÞIKKI-------------------------------------
%Bu iþlemlerin farklý gürültü tip ve þiddetlerinde (SNR deðerleri) tekrarlanmasý

%gürültü ekleme snr 10 degeri icin

clear all       
clc


[x,fs] = audioread('u_yigithan.wav');%a_harfi.wav dosyasýndan ses dosyasýný x denklemi ve fs frekanslarný elde ettik
t=(0:length(x)-1)/fs;%zaman çizelgesini oluþturduk

snr=10;%gürültü deðerimiz. 

gurultu=awgn(x,snr,'measured');


figure(1)
plot(t,x);%t ve x in grafiðini çizdik
title('Waveform');
xlabel('Time (s)');
ylabel('Amplitude');

figure (2)
plot(t,gurultu);
title('Waveform with snr');
xlabel('Time (s)');
ylabel('Amplitude');


%buraya kadar 6 saniyelik ses dosyasýnýn frekans ve x dogrultusundaki
%görüntüsün elde ettik


%elimizdeki x sinyalini fft komutuyla fourier transformunu aldýk
y = fft(gurultu); %x in fourier transformunu aldýk
f = (0:length(y)-1).*fs/length(y);%frekansý çýkardýk
%çizdirdik
figure(3)
plot(f,abs(y))
title('Magnitude db')
xlabel('frequency');
ylabel('magnitude db')



%tek taraf
freq = 0:fs/length(gurultu):fs/2;
y = y(1:length(gurultu)/2+1);
figure(4)
plot(freq,abs(y))
title('tek taraflý')
xlabel('frequency');
ylabel('magnitude db')
[genlik,fundamental_freq] = max(abs(y));

%a þýkký temel frekans
temel=freq(fundamental_freq)  
genlik

%takip eden formant frekanslarý

ncoeff=2+fs/1000;
a=lpc(gurultu,ncoeff);

vector=a(:);

r=roots(vector);
r=r(imag(r)>0.01);       
ffreq=sort(atan2(imag(r),real(r))*fs/(2*pi));

fprintf('Formant %d Frequency %.1f\n',i,ffreq(1));
fprintf('Formant %d Frequency %.1f\n',i,ffreq(2));
fprintf('Formant %d Frequency %.1f\n',i,ffreq(3));

%%

%-----------------------------E ÞIKKI-------------------------------------
%-----------------------------E ÞIKKI-------------------------------------
%-----------------------------E ÞIKKI-------------------------------------
%Bu iþlemlerin farklý gürültü tip ve þiddetlerinde (SNR deðerleri) tekrarlanmasý

%gürültü ekleme snr 15  degeri icin

clear all       
clc


[x,fs] = audioread('u_harfi.wav');%a_harfi.wav dosyasýndan ses dosyasýný x denklemi ve fs frekanslarný elde ettik
t=(0:length(x)-1)/fs;%zaman çizelgesini oluþturduk

snr=15;

gurultu=awgn(x,snr,'measured');


figure(1)
plot(t,x);%t ve x in grafiðini çizdik
title('Waveform');
xlabel('Time (s)');
ylabel('Amplitude');

figure (2)
plot(t,gurultu);
title('Waveform with snr');
xlabel('Time (s)');
ylabel('Amplitude');


%buraya kadar 6 saniyelik ses dosyasýnýn frekans ve x dogrultusundaki
%görüntüsün elde ettik


%elimizdeki x sinyalini fft komutuyla fourier transformunu aldýk
y = fft(gurultu); %x in fourier transformunu aldýk
f = (0:length(y)-1).*fs/length(y);%frekansý çýkardýk
%çizdirdik
figure(3)
plot(f,abs(y))
title('Magnitude db')
xlabel('frequency');
ylabel('magnitude db')




%tek taraf
freq = 0:fs/length(gurultu):fs/2;
y = y(1:length(gurultu)/2+1);
figure(4)
plot(freq,abs(y))
title('tek taraflý')
xlabel('frequency');
ylabel('magnitude db')
[genlik,fundamental_freq] = max(abs(y));

%a þýkký temel frekans
temel=freq(fundamental_freq)  %this is frequency corresponding to max value
genlik

%takip eden formant frekanslarý

ncoeff=2+fs/1000;
a=lpc(gurultu,ncoeff);

vector=a(:);

r=roots(vector);
r=r(imag(r)>0.01);       
ffreq=sort(atan2(imag(r),real(r))*fs/(2*pi));

fprintf('Formant %d Frequency %.1f\n',i,ffreq(1));
fprintf('Formant %d Frequency %.1f\n',i,ffreq(2));
fprintf('Formant %d Frequency %.1f\n',i,ffreq(3));
%%
%-----------------------------E ÞIKKI-------------------------------------
%-----------------------------E ÞIKKI-------------------------------------
%-----------------------------E ÞIKKI-------------------------------------
%-----------------------------E ÞIKKI-------------------------------------
%Bu iþlemlerin farklý gürültü tip ve þiddetlerinde (SNR deðerleri) tekrarlanmasý

%gürültü ekleme snr 5 Yiðithan sesi için 

clear all       
clc


[x,fs] = audioread('u_yigithan.wav');%a_harfi.wav dosyasýndan ses dosyasýný x denklemi ve fs frekanslarný elde ettik
t=(0:length(x)-1)/fs;%zaman çizelgesini oluþturduk

snr=5;

gurultu=awgn(x,snr,'measured');


figure(1)
plot(t,x);%t ve x in grafiðini çizdik
title('Waveform');
xlabel('Time (s)');
ylabel('Amplitude');

figure (2)
plot(t,gurultu);
title('Waveform with snr');
xlabel('Time (s)');
ylabel('Amplitude');


%buraya kadar 6 saniyelik ses dosyasýnýn frekans ve x dogrultusundaki
%görüntüsün elde ettik


%elimizdeki x sinyalini fft komutuyla fourier transformunu aldýk
y = fft(gurultu); %x in fourier transformunu aldýk
f = (0:length(y)-1).*fs/length(y);%frekansý çýkardýk
%çizdirdik
figure(3)
plot(f,abs(y))
title('Magnitude db')
xlabel('frequency');
ylabel('magnitude db')



%tek taraf
freq = 0:fs/length(gurultu):fs/2;
y = y(1:length(gurultu)/2+1);
figure(4)
plot(freq,abs(y))
title('tek taraflý')
xlabel('frequency');
ylabel('magnitude db')
[genlik,fundamental_freq] = max(abs(y));

%a þýkký temel frekans
temel=freq(fundamental_freq)  %this is frequency corresponding to max value
genlik

%takip eden formant frekanslarý

ncoeff=2+fs/1000;
a=lpc(gurultu,ncoeff);

vector=a(:);

r=roots(vector);
r=r(imag(r)>0.01);       
ffreq=sort(atan2(imag(r),real(r))*fs/(2*pi));

fprintf('Formant %d Frequency %.1f\n',i,ffreq(1));
fprintf('Formant %d Frequency %.1f\n',i,ffreq(2));
fprintf('Formant %d Frequency %.1f\n',i,ffreq(3));


%%
%-----------------------------E ÞIKKI-------------------------------------
%-----------------------------E ÞIKKI-------------------------------------
%-----------------------------E ÞIKKI-------------------------------------
%Bu iþlemlerin farklý gürültü tip ve þiddetlerinde (SNR deðerleri) tekrarlanmasý

%gürültü ekleme snr 10 degeri icin

clear all       
clc


[x,fs] = audioread('u_harfi.wav');%a_harfi.wav dosyasýndan ses dosyasýný x denklemi ve fs frekanslarný elde ettik
t=(0:length(x)-1)/fs;%zaman çizelgesini oluþturduk

snr=5;

gurultu=awgn(x,snr,'measured');


figure(1)
plot(t,x);%t ve x in grafiðini çizdik
title('Waveform');
xlabel('Time (s)');
ylabel('Amplitude');

figure (2)
plot(t,gurultu);
title('Waveform with snr');
xlabel('Time (s)');
ylabel('Amplitude');


%buraya kadar 6 saniyelik ses dosyasýnýn frekans ve x dogrultusundaki
%görüntüsün elde ettik


%elimizdeki x sinyalini fft komutuyla fourier transformunu aldýk
y = fft(gurultu); %x in fourier transformunu aldýk
f = (0:length(y)-1).*fs/length(y);%frekansý çýkardýk
%çizdirdik
figure(3)
plot(f,abs(y))
title('Magnitude db')
xlabel('frequency');
ylabel('magnitude db')



%tek taraf
freq = 0:fs/length(gurultu):fs/2;
y = y(1:length(gurultu)/2+1);
figure(4)
plot(freq,abs(y))
title('tek taraflý')
xlabel('frequency');
ylabel('magnitude db')
[genlik,fundamental_freq] = max(abs(y));

%a þýkký temel frekans
temel=freq(fundamental_freq)  %this is frequency corresponding to max value
genlik

%takip eden formant frekanslarý

ncoeff=2+fs/1000;
a=lpc(gurultu,ncoeff);

vector=a(:);

r=roots(vector);
r=r(imag(r)>0.01);       
ffreq=sort(atan2(imag(r),real(r))*fs/(2*pi));

fprintf('Formant %d Frequency %.1f\n',i,ffreq(1));
fprintf('Formant %d Frequency %.1f\n',i,ffreq(2));
fprintf('Formant %d Frequency %.1f\n',i,ffreq(3));



 



%%
%-----------------------------------C ÞIKKI--------------------------------
%-----------------------------------C ÞIKKI--------------------------------
%-----------------------------------C ÞIKKI--------------------------------
%Gruba verilen sesli harf için, buna en yakýn 5 sn’lik yapay ses 
%üretilmesi; a ve b þýklarýndaki uygulamalarýn yapýlmasý

%yapay ses oluþurma
clear all
clc



amp=16.27
fs=2050% sampling frequency
duration=1
freq=149.6,
values1=0:1/fs:duration;
a1=amp*sin(2*pi* freq*values1*10)/100;

amp2=42.88
freq2=165.3;
values2=duration:1/fs:duration+1;
a2=amp2*sin(2*pi* freq2*values2*10)/50;


amp3=181
freq3=65.5;
values3=duration+1:1/fs:duration+2;
a3=amp3*sin(2*pi* freq3*values3*10)/10;

amp4=42.74
freq4=186.2;
values4=duration+2:1/fs:duration+3;
a4=amp4*sin(2*pi* freq4*values4*10);

amp5=11.98
freq5=193.1
values5=duration+3:1/fs:duration+4;
a5=amp5*sin(2*pi* freq5*values5*10);

amp6=12.64
freq6=339.3
values6=duration+4:1/fs:duration+5;
a6=amp6*sin(2*pi* freq6*values6*10);

amp7=39.48
freq7=375.9
values7=duration+6:1/fs:duration+6;
a7=amp7*sin(2*pi* freq7*values7*10);

amp8=63.88
freq8=367.2
values8=duration+6:1/fs:duration+6;
a8=amp8*sin(2*pi* freq8*values8*10);

amp9=47.73
freq9=374.9
values9=duration+6:1/fs:duration+6;
a9=amp9*sin(2*pi* freq9*values9*10);

amp10=17.52
freq10=382.8
values10=duration+6:1/fs:duration+6;
a10=amp10*sin(2*pi* freq10*values10*10);

amp11=2.45
freq11=511.6
values11=(duration+6:1/fs:duration+6);
a11=amp11*sin(2*pi* freq11*values11*10);

a=(a1+a2+a3+a4+a5+a6+a7+a8+a9+a10+a11)/10

b=(ifft(a)*30)


t=(0:length(a)-1)/fs;%zaman çizelgesini oluþturduk
f = ((0:length(a)-1).*fs/length(a))
figure(1)
plot(t,a);%t ve x in grafiðini çizdik
title('Waveform');
xlabel('Time (s)');
ylabel('Amplitude');

figure(2)

plot(f,abs(b))
title('Magnitude db')
xlabel('frequency');
ylabel('magnitude db')


freq = 0:fs/length(a):fs/2;
b = b(1:length(a)/2+1);

[genlik,fundamental_freq] = max(abs(b));


temel=freq(fundamental_freq)  %this is frequency corresponding to max value
genlik






















