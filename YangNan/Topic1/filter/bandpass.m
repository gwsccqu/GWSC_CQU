%% Design a band pass filter and test it


%Yang Nan, Feb 23rd, 2021


samplFreq = 1024;
samplIntrvl = 1/samplFreq;

% Time samples
timeVec = 0:samplIntrvl:2.0;
% Number of samples
nSamples = length(timeVec);

% Generate the signal
sigVec = genSignal();


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
subplot(2,2,1);
plot(posFreq,abs(fftSig));
xlabel('Frequency (Hz)');
title('input periodogram')
%Plot a spectrogram
%----------------
winLen = 0.2;%sec
ovrlp = 0.1;%sec
%Convert to integer number of samples 
winLenSmpls = floor(winLen*samplFreq);
ovrlpSmpls = floor(ovrlp*samplFreq);
[S,F,T]=spectrogram(sigVec,winLenSmpls,ovrlpSmpls,[],samplFreq);
subplot(2,2,3);
imagesc(T,F,abs(S)); axis xy;
xlabel('Time (sec)');
ylabel('Frequency (Hz)');
title('input spectrogram')

% Design a band pass filter
filtOrdr = 30;
minFreq = 150;
maxFreq = 250;
b = fir1(filtOrdr, [minFreq/(samplFreq/2) maxFreq/(samplFreq/2)]);
% Apply filter
filtSig = fftfilt(b, sigVec);


%Plot the periodogram after filtering
%--------------
%Length of data 
dataLen = timeVec(end)-timeVec(1);
%DFT sample corresponding to Nyquist frequency
kNyq = floor(nSamples/2)+1;
% Positive Fourier frequencies
posFreq = (0:(kNyq-1))*(1/dataLen);
% FFT of signal
fftSig = fft(filtSig);
% Discard negative frequencies
fftSig = fftSig(1:kNyq);

%Plot periodogram
subplot(2,2,2);
plot(posFreq,abs(fftSig));
xlabel('Frequency (Hz)');
title('output periodogram')
%Plot a spectrogram after filtering
%----------------
winLen = 0.2;%sec
ovrlp = 0.1;%sec
%Convert to integer number of samples 
winLenSmpls = floor(winLen*samplFreq);
ovrlpSmpls = floor(ovrlp*samplFreq);
[S,F,T]=spectrogram(filtSig,winLenSmpls,ovrlpSmpls,[],samplFreq);
subplot(2,2,4);
imagesc(T,F,abs(S)); axis xy;
xlabel('Time (sec)');
ylabel('Frequency (Hz)');
title('output spectrogram')

suptitle('Band Pass Filter')