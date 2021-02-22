%% Compare 1/2 Nyquist f_s with 5 times Nyquist f_s
% Plot the linear transient chirp signal
% Signal parameters

ta = 1;
L = 7;
A = 10;
f0=5;
f1=3;
phi0=pi;
% Instantaneous frequency after 1 sec is 

samplFreq = 5*(f0+2*f1);
samplIntrvl = 1/samplFreq;

% Time samples
timeVec = 0:samplIntrvl:10.0;
% Number of samples
nSamples = length(timeVec);

% Generate the signal
sigVec = genLTCsig(timeVec,A,ta,f0,f1,phi0,L);

%Plot the signal 
figure;
plot(timeVec,sigVec,'Marker','.','MarkerSize',24);
hold on

 %  half Nyquist f_s
samplFreq = (f0+2*f1);
samplIntrvl = 1/samplFreq;

% Time samples
timeVec = 0:samplIntrvl:10.0;
% Number of samples
nSamples = length(timeVec);

% Generate the signal
sigVec = genLTCsig(timeVec,A,ta,f0,f1,phi0,L);

%Plot the signal 
plot(timeVec,sigVec,'Marker','.','MarkerSize',24);


xlabel('t')
ylabel('amplitude')
legend('5 times Nyqui','half Nyqui');