%% Compare 1/2 Nyquist f_s with 5 times Nyquist f_s
% sinusoidal signal
f0=25;
phi0=pi/2;
A = 10;
% Instantaneous frequency after 1 sec is 
samplFreq = 5*f0;
samplIntrvl = 1/samplFreq;

% Time samples
timeVec = 0:samplIntrvl:1.0;
% Number of samples
nSamples = length(timeVec);

% Generate the signal
sigVec = crcbgensinsig(timeVec,A,f0,phi0);

%Plot the signal 
figure;
plot(timeVec,sigVec,'Marker','.','MarkerSize',24);
hold on

 %  half Nyquist f_s
samplFreq = f0;
samplIntrvl = 1/samplFreq;

% Time samples
timeVec = 0:samplIntrvl:1.0;
% Number of samples
nSamples = length(timeVec);

% Generate the signal
sigVec = crcbgensinsig(timeVec,A,f0,phi0);

%Plot the signal 

plot(timeVec,sigVec,'Marker','.','MarkerSize',24);

xlabel('t')
ylabel('amplitude')
legend('5 times Nyqui','half Nyqui');

