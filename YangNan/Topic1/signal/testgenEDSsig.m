%% Plot the exponentially damped sinusoid signal
% Signal parameters

ta = 1;
L = 7;
A = 10;
f0=5;
tao=2;
phi0=pi;
% Instantaneous frequency after 10 sec is 

samplFreq = 5*f0;
samplIntrvl = 1/samplFreq;

% Time samples
timeVec = 0:samplIntrvl:10.0;
% Number of samples
nSamples = length(timeVec);

% Generate the signal
sigVec = genEDSsig(timeVec,A,ta,f0,tao,phi0,L);

%Plot the signal 
figure;
plot(timeVec,sigVec,'Marker','.','MarkerSize',24);

%Plot the periodogram
%--------------
%Length of data 
dataLen = timeVec(end)-timeVec(1);
%DFT sample corresponding to Nyquist frequency
kNyq = floor(nSamples/2)+1;
% Positive Fourier frequencies
posFreq = (0:(kNyq-1))*(1/dataLen);
% FFT of signal
fftSig = fft(sigVec);
% Discard negative frequencies
fftSig = fftSig(1:kNyq);

%Plot periodogram
figure;
plot(posFreq,abs(fftSig));

%Plot a spectrogram
%----------------
winLen = 0.3;%sec
ovrlp = 0.2;%sec
%Convert to integer number of samples 
winLenSmpls = floor(winLen*samplFreq);
ovrlpSmpls = floor(ovrlp*samplFreq);
[S,F,T]=spectrogram(sigVec,winLenSmpls,ovrlpSmpls,[],samplFreq);
figure;
imagesc(T,F,abs(S)); axis xy;
xlabel('Time (sec)');
ylabel('Frequency (Hz)');
title(' exponentially damped sinusoid ');