%% Plot the quadratic chirp signal
% Signal parameters
snr =10
f0 =10
pha =1
% Instantaneous frequency after 1 sec is 
maxfreq = f0
samplFreq = 10 *maxfreq;
samplIntrvl = 1/samplFreq;

% Time samples
timeVec = 0:samplIntrvl:1.0;

% Generate the signal
 sigVect = crcbgensinsig(timeVec,snr,pha,f0)

%Plot the signal 
figure;
plot(timeVec,sigVect,'Marker','.','MarkerSize',24);