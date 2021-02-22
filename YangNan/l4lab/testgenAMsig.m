%% Compare 1/2 Nyquist f_s with 5 times Nyquist f_s
%Plot the AM signal
% Signal parameters
phi0=pi;
A = 10;
f0=1;
f1=10;
% Instantaneous frequency after 1 sec is 

samplFreq = 5*max(f0,f1);
samplIntrvl = 1/samplFreq;

% Time samples
timeVec = 0:samplIntrvl:10.0;
% Number of samples
nSamples = length(timeVec);

% Generate the signal
sigVec = genAMsig(timeVec,A,f0,f1,phi0);

%Plot the signal 
figure;
plot(timeVec,sigVec,'Marker','.','MarkerSize',24);
hold on

% half f_s
samplFreq = max(f0,f1);
samplIntrvl = 1/samplFreq;

% Time samples
timeVec = 0:samplIntrvl:10.0;
% Number of samples
nSamples = length(timeVec);

% Generate the signal
sigVec = genAMsig(timeVec,A,f0,f1,phi0);

%Plot the signal 
plot(timeVec,sigVec,'Marker','.','MarkerSize',24);


xlabel('t')
ylabel('amplitude')
legend('5 times Nyqui','half Nyqui');
