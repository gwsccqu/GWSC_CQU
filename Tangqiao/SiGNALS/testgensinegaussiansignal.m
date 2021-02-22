%% Plot the quadratic chirp signal
% Signal parameters
snr =10
f0 =10
delta = 0.5
pha =1
t0 = 1

% Instantaneous frequency after 1 sec is 
maxFreq = f0
samplFreq = 10 * maxFreq;
samplIntrvl = 1  /samplFreq;

% Time samples
timeVec = 0:samplIntrvl:1.0;
% Generate the signal
sigVec = gensinegaussiansignal(timeVec,snr,f0,pha,t0,delta)
%Plot the signal 
figure;
plot(timeVec,sigVec,'Marker','.','MarkerSize',24);
