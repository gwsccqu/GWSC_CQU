f0=10;
A=1;
phy0=0;
% Instantaneous frequency after 1 sec is 
maxFreq = f0;
samplFreq = 5*maxFreq;
samplIntrvl = 1/samplFreq;
% Time samples
timeVec = 0:samplIntrvl:1.0;
% Number of samples
nSamples = length(timeVec);
sig1=gesig (timeVec,A,f0,phy0);

%figure;
%plot(timeVec,sig1,'Marker','.','MarkerSize',16);

%Length of data 
dataLen = timeVec(end)-timeVec(1);
%DFT sample corresponding to Nyquist frequency
kNyq = floor(nSamples/2)+1;
% Positive Fourier frequencies
posFreq = (0:(kNyq-1))*(1/dataLen);
% FFT of signal
fftSig = fft(sig1);
% Discard negative frequencies
fftSig = fftSig(1:kNyq);

%Plot periodogram
%figure;
%plot(posFreq,abs(fftSig));



b=fir1(30,(maxFreq/2)/(samplFreq/2));
filtSig = fftfilt(b,sig1);

figure;
disp(length(timeVec))
plot(timeVec,abs(filtSig));