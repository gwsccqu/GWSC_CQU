%% Plot the frequency modulated sinusoid signal
% Signal parameters
snr =10
f0 =10
f1 =1
b = 1

% Instantaneous frequency after 2 sec is 
maxFreq = f0*2 + b/(2*pi)*cos(2*pi*f1*2)
samplFreq = 10 * maxFreq;
samplIntrvl = 1  /samplFreq;

% Time samples
timeVec = 0:samplIntrvl:2.0;
% Generate the signal
sigVect = genFMsinusoid(timeVec,snr,[f0,f1],b)
%Plot the signal 
figure;
plot(timeVec,sigVect,'Marker','.','MarkerSize',24);