clc
t = 1:8;
k= importdata('hwk2a.txt',' ',1);
N = 1024;
fs = 1000;
c = struct2cell(k);
Z = cell2mat(c(1,1));
file = Z(:,1);
bin1=file(1:1000); 
bin2=file(1001:2000);
bin3=file(2001:3000);
bin4=file(3001:4000);
bin5=file(4001:5000);
bin6=file(5001:6000);
bin7=file(6001:7000);
bin8=file(7001:8000);

f = fs*(0:(N/2)-1)/N;

y(:,1)=  fft(bin1,1024);
y(:,2) = fft(bin2,1024);
y(:,3) = fft(bin2,1024);
y(:,4) = fft(bin4,1024);
y(:,5) = fft(bin5,1024);
y(:,6) = fft(bin6,1024);
y(:,7) = fft(bin7,1024);
y(:,8) = fft(bin8,1024);


psd1 = y(:,1).*conj(y(:,1))/1024;
psd2 = y(:,2).*conj(y(:,2))/1024;
psd3 = y(:,3).*conj(y(:,3))/1024;
psd4 = y(:,4).*conj(y(:,4))/1024;
psd5 = y(:,5).*conj(y(:,5))/1024;
psd6 = y(:,6).*conj(y(:,6))/1024;
psd7 = y(:,7).*conj(y(:,7))/1024;
psd8 = y(:,8).*conj(y(:,8))/1024;

figure;
subplot(2,2,1)
plot(f,psd1(1:512,:));


subplot(2,2,2)
plot(f,psd2(1:512,:));


subplot(2,2,3)
plot(f,psd3(1:512,:));


subplot(2,2,4)
plot(f,psd4(1:512,:));


figure;
subplot(2,2,1)
plot(f,psd5(1:512,:));


subplot(2,2,2)
plot(f,psd6(1:512,:));


subplot(2,2,3)
plot(f,psd7(1:512,:));


subplot(2,2,4)
plot(f,psd8(1:512,:));


formant1 = 300;
formant2 = 300;
figure;
line([0 0], formant1)
line(formant2, [0 0])
xlabel('formant1')
ylabel('formant2')
text(70,110,'o vowel A (3times)')
text(50,180,'o vowel E')
text(60,18,'o vowel O')
text(40,200,'o vowel I (2times)')
text(50,180,'o vowel E')

figure;
surf(t,f,abs(y(1:512,:)))




























































































































































































































































































