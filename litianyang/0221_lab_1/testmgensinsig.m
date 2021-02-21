%% Plot Sinusoidal signal
% Signal parameters
fre0 = 10;
phi0 = 10;
A = 10;

% To set time samples 
samplfre0 = 10*fre0;
samplintrvl = 1/samplfre0;
timeVec = 0:samplintrvl:1.0;
% Number of samples
nsamples = length(timeVec);

% Generate the signal
sigVec = mgensinsig(timeVec,A,fre0,phi0);

% Plot the signal
figure;
plot(timeVec,sigVec,'Marker','.','MarkerSize',24);

