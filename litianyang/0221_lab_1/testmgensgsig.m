%% Plot Sinusoidal signal
% Signal parameters
A = 10;
t0=0.5;
sigma=2;
freq1 = 3;
phi0 = 10;

% Instantaneous frequency after 1 sec is
maxFreq = 2*pi*freq1;
samplFreq = 5*maxFreq;
samplIntrvl = 1/samplFreq;

% Time samples
timeVec = 0:samplIntrvl:1.0;
% Number of samples
nSamples = length(timeVec);

% Generate the signal
sigVec = mgensgsig(timeVec,A,t0,sigma,freq1,phi0);

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
plot(posFreq,abs(fftSig));