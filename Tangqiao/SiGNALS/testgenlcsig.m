%% Plot the quadratic chirp signal
% Signal parameters
snr =10
f0 =10
f1 =3
pha =1
% Instantaneous frequency after 1 sec is 
maxFreq = f0 + 2 * f1 * 1
samplFreq = 10 * maxFreq;
samplIntrvl = 1  /samplFreq;


% Time samples
timeVec = 0:samplIntrvl:1.0;

% Generate the signal
sigVec = genlcsig(timeVec,snr,[f0,f1],pha)

%Plot the signal 
figure;
plot(timeVec,sigVec,'Marker','.','MarkerSize',24);
