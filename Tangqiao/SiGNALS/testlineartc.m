%% Plot the quadratic chirp signal
% Signal parameters
ta = 1
L = 1
pha =0
f0 =10
snr =1
f1 =1
% Instantaneous frequency after 3 sec is 
maxFreq = f0
samplFreq = 10 * maxFreq;
samplIntrvl = 1  /samplFreq;
% Time samples
timeVec = 0:samplIntrvl:3.0;

% Generate the signal
sigVect = lineartc(timeVec,ta,L,pha,f0,f1,snr)
%Plot the signal 
figure;
plot(timeVec,sigVect,'Marker','.','MarkerSize',24);
