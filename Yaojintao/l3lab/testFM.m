
%% Plot the Frequency modulated (FM) sinusoid
% Signal parameters
f0=10;
f1=3;
b=10;
A = 10;
% Instantaneous frequency after 1 sec is 
maxFreq = (2*pi*f0+b*cos(2*pi*f1))/(2*pi);
samplFreq = 5*maxFreq;
samplIntrvl = 1/samplFreq;

% Time samples
timeVec = 0:samplIntrvl:2.0;
% Number of samples
nSamples = length(timeVec);

% Generate the signal
sigVec = FM(timeVec,A,f0,f1,b);

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
winLen = 0.2;%sec
ovrlp = 0.1;%sec
%Convert to integer number of samples 
winLenSmpls = floor(winLen*samplFreq);
ovrlpSmpls = floor(ovrlp*samplFreq);
[S,F,T]=spectrogram(sigVec,winLenSmpls,ovrlpSmpls,[],samplFreq);
figure;
imagesc(T,F,abs(S)); axis xy;
xlabel('Time (sec)');
ylabel('Frequency (Hz)');