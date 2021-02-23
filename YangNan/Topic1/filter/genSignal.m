function sigVec = genSignal()
% Generate the signal that contains three sinusoidal components.

%Yang Nan, Feb 23rd, 2021

% Signal parameters
A1 = 10;
f1=100;
phi1=0;

A2 = 5;
f2=200;
phi2=pi/6;

A3 = 2.5;
f3=300;
phi3=pi/4;

samplFreq = 1024;
samplIntrvl = 1/samplFreq;

% Time samples
timeVec = 0:samplIntrvl:2.0;

% Generate the signal
s1 = genSinSig(timeVec,A1,f1,phi1);
s2 = genSinSig(timeVec,A2,f2,phi2);
s3 = genSinSig(timeVec,A3,f3,phi3);
sigVec = s1+s2+s3;

