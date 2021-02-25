%% Generate a signal of the sum of sinusoids and demonstrate filters

% Set parameters of the signal
A = [10,5,2.5];
fre = [100,200,300];
phi = [0,pi/6,pi/4];

% Set the sample
samplfre = 1024;
samplintrvl = 1/samplfre;
timeVec = 0:samplintrvl:2-samplintrvl;

% Generate the signal
sigVec = mgenssinsig(timeVec,A,fre,phi);

% Length of the signal
sigLen = length(sigVec);
halfLen = sigLen/2;

% Plot the Fourier transform of the signal
binwidth = samplfre/sigLen;
ffre = 0:binwidth:samplfre-binwidth;
fsig = fft(sigVec);
figure;
plot(ffre,abs(fsig));

% Set cut-off frequency and order
w1 = 2*fre(1)/samplfre;
w2 = 2*fre(2)/samplfre;
w3 = 2*fre(3)/samplfre;
ord = 30;

% Lowpass filter
b1 = fir1(ord,w1,'low');
filtSig1 = fftfilt(b1,sigVec);
ffiltSig1 = fft(filtSig1);
figure;
plot(ffre,abs(ffiltSig1));

% bandpass filter
b2 = fir1(ord,[(w1+w2)/2,(w2+w3)/2],'bandpass');
filtSig2 = fftfilt(b2,sigVec);
ffiltSig2 = fft(filtSig2);
figure;
plot(ffre,abs(ffiltSig2));

% highpass filter
b3 = fir1(ord,w3,'high');
filtSig3 = fftfilt(b3,sigVec);
ffiltSig3 = fft(filtSig3);
figure;
plot(ffre,abs(ffiltSig3));

% Plot a spectrogram
winLen = 0.2; % sec
noverlap = 0.1; %sec
win = floor(winLen*samplfre);
nover = floor(noverlap*samplfre);
[S,F,T] = spectrogram(sigVec,win,nover,[],samplfre);
figure;
imagesc(T,F,abs(S));axis xy;
xlabel('time');
ylabel('fre');

