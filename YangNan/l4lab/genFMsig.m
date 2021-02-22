function sigVec = genFMsig(dataX,snr,b,f0,f1)
% Generate a frequency modulated signal
% S = GENFMSIG(X,SNR,b,F0,f1)
% Generates a FM signal S. X is the vector of
% time stamps at which the samples of the signal are to be computed. SNR is
% the matched filtering signal-to-noise ratio of S. b is the coefficient of
% modulated part. f0 and f1 are frequencies.

%Yang Nan, Feb 2021

modulation=b*cos(2*pi*f1*dataX);
sigVec = sin(2*pi*f0*dataX+modulation);
sigVec = snr*sigVec/norm(sigVec);


