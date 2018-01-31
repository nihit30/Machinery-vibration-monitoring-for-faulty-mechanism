t = 0.5:0.001:6;
fo = 50;
fs = 1000;
N = 1024;
threebladedfan_component = 3*fo;
gearbox_component = 4*fo;
f = fs*(0:511)/512;

fftdata = zeros(500,5501);

file = readtable('hwk machine vib data.xls')
table = file(3:6003,3);
data = table2array(table);

N = 1;
window = 1

for i = 1:5501
    if N<=5501
    fftdata(:,i) = fft(data(window:window+499));
    window = window+1;
    end
end
psd = fftdata.*conj(fftdata)/1024;
figure;
plot(f(1:500),abs(psd(1:500,:)))
title('With power spectral density')

figure;
plot(f(1:500),abs(fftdata(1:500,:)))
title('Without power spectral density')


figure;
mesh(t,f(1:500),abs(fftdata(1:500,:)));





 



 
