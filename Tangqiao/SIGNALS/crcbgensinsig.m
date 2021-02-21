function sigVect = crcbgensinsig(dataX,snr,pha,fre)
% Generate a Sinusoidal  signal
% S = crcbgensinsig(dataX,snr,pha,fre)
% Generates a sin signal S. X is the vector of
% time stamps at which the samples of the signal are to be computed. SNR is
% the matched filtering signal-to-noise ratio of S and pha is phase of the 
% sin functin. fre is the frequency of sin function

%TangQiao, Feb 2021

phaVec = 2 * pi  *fre * dataX + pha
sigVect = snr * sin(phaVec)
