%% Compare 1/2 Nyquist f_s with 5 times Nyquist f_s
% Plot the AM-FM signal
% Signal parameters
b=10;
A = 10;
f0=10;
f1=3;
% Instantaneous frequency after 10 sec is 

samplFreq = 5*2*max(f0,b*f1);
samplIntrvl = 1/samplFreq;

% Time samples
timeVec = 0:samplIntrvl:10.0;
% Number of samples
nSamples = length(timeVec);

% Generate the signal
sigVec = genAMFMsig(timeVec,A,b,f0,f1);

%Plot the signal 
figure;
plot(timeVec,sigVec,'Marker','.','MarkerSize',24);

hold on

 %  half Nyquist f_s

samplFreq = max(f0,b*f1);
samplIntrvl = 1/samplFreq;

% Time samples
timeVec = 0:samplIntrvl:10.0;
% Number of samples
nSamples = length(timeVec);

% Generate the signal
sigVec = genAMFMsig(timeVec,A,b,f0,f1);

%Plot the signal 
plot(timeVec,sigVec,'Marker','.','MarkerSize',24);

xlabel('t')
ylabel('amplitude')
legend('5 times Nyqui','half Nyqui');

