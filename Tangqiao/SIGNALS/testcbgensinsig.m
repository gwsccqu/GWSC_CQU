%% Plot the sin  signal
% Signal parameters

fre = 1
pha = 0.4
snr = 1
% Time samples
timeVec = 0:0.05:2;

%Plot the signal 
sigVect = crcbgensinsig(timeVec,snr,pha,fre)
figure
plot(timeVec,sigVect,'Marker','.','MarkerSize',24);