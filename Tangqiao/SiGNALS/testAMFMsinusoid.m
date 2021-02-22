%% Plot the AM sinusoid signal
% Signal parameters
snr =10
f0 =10
f1 =1
b = 1

% Instantaneous frequency after 2 sec is 
maxFreq = 5* f0
samplFreq = 10 * maxFreq;
samplIntrvl = 1  /samplFreq;

% Time samples
timeVec = 0:samplIntrvl:1.0;
% Generate the signal
sigVect = genAMFMsinusoid(timeVec,snr,[f0,f1],b)
%Plot the signal 
figure;
plot(timeVec,sigVect,'Marker','.','MarkerSize',24);