%% Plot Sinusoidal signal
% Signal parameters
A = 10;
phi0 = 10;
freq1 = 1;
freq2 = 2;
% Instantaneous frequency after 1 sec is
maxFreq = freq1+2*freq2;
samplFreq = 5*maxFreq;
samplIntrvl = 1/samplFreq;

% Time samples
timeVec = 0:samplIntrvl:1.0;
% Number of samples
nSamples = length(timeVec);

% Generate the signal
sigVec = mgenlcsig(timeVec,A,[freq1,freq2],phi0);

% Plot the signal
figure;
plot(timeVec,sigVec,'Marker','.','MarkerSize',24);

% Plot the periodogram
%-------------------
% Length of data
dataLen = timeVec(end)-timeVec(1);
% DFT sample corresponding to Nyquist frequency
kNyq = floor(nSamples/2)+1;
% Positive Fourier frequencies
posFreq = (0:(kNyq-1))*(1/dataLen);
% FFT of signal
fftSig = fft(sigVec);
% Discard negative frequencies
fftSig = fftSig(1:kNyq);

% Plot periodogram
figure;
plot(posFreq,abs(fftSig))