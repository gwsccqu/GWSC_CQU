%% Plot the quadratic chirp signal
% Signal parameters
snr =1
f0 =3
f1 =2
pha =1
% Time samples
timeVec = 0:0.01:1.5;

% Generate the signal
sigVec = genlcsig(timeVec,snr,[f0,f1],pha)

%Plot the signal 
figure;
plot(timeVec,sigVec,'Marker','.','MarkerSize',24);