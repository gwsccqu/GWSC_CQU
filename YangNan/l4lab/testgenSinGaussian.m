%% Compare 1/2 Nyquist f_s with 5 times Nyquist f_s
% Plot the sine-gaussian signal
% Signal parameters
t0=2.5;
sigma=1;
A = 10;
f0=5;
phi0=pi/2;
% Instantaneous frequency after 1 sec is 

samplFreq = 5*f0;
samplIntrvl = 1/samplFreq;

% Time samples
timeVec = 0:samplIntrvl:7.0;
% Number of samples
nSamples = length(timeVec);

% Generate the signal
sigVec = genSinGaussian(timeVec,A,[t0,sigma],f0,phi0);

%Plot the signal 
figure;
plot(timeVec,sigVec,'Marker','.','MarkerSize',24);
hold on

 %  half Nyquist f_s
samplFreq = f0;
samplIntrvl = 1/samplFreq;

% Time samples
timeVec = 0:samplIntrvl:7.0;
% Number of samples
nSamples = length(timeVec);

% Generate the signal
sigVec = genSinGaussian(timeVec,A,[t0,sigma],f0,phi0);

%Plot the signal 
plot(timeVec,sigVec,'Marker','.','MarkerSize',24);


xlabel('t')
ylabel('amplitude')
legend('5 times Nyqui','half Nyqui');