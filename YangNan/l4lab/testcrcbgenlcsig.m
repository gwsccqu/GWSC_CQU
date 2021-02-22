%% Compare 1/2 Nyquist f_s with 5 times Nyquist f_s
% Signal parameters
a1=30;
a2=20;
A = 10;
phi0=pi/2;

 % 5 times Nyquist f_s
maxFreq = a1+2*a2; % Instantaneous frequency after 1 sec is
samplFreqFiveNyqui = 5*2*maxFreq;
samplIntrvl = 1/samplFreqFiveNyqui;

% Time samples
timeVec = 0:samplIntrvl:1.0;
% Number of samples
nSamples = length(timeVec);

% Generate the signal
sigVec = crcbgenlcsig(timeVec,A,[a1,a2],phi0);

%Plot the signal 
figure;
plot(timeVec,sigVec,'Marker','.','MarkerSize',24);
hold on

 %  half Nyquist f_s
maxFreq = a1+2*a2; % Instantaneous frequency after 1 sec is
samplFreqFiveNyqui = maxFreq;
samplIntrvl = 1/samplFreqFiveNyqui;

% Time samples
timeVec = 0:samplIntrvl:1.0;
% Number of samples
nSamples = length(timeVec);

% Generate the signal
sigVec = crcbgenlcsig(timeVec,A,[a1,a2],phi0);

%Plot the signal 

plot(timeVec,sigVec,'Marker','.','MarkerSize',24);

xlabel('t')
ylabel('amplitude')
legend('5 times Nyqui','half Nyqui');

