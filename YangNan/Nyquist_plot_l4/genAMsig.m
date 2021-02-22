function sigVec = genAMsig(dataX,snr,f0,f1,phi0)
% Generate a amplitude modulated signal
% S = GENAMSIG(X,SNR,F0,F1,PHI0)
% Generates a AM signal S. X is the vector of
% time stamps at which the samples of the signal are to be computed. SNR is
% the matched filtering signal-to-noise ratio of S. f0 and f1 are
% frequencies. phi0 is the phase.

%Yang Nan, Feb 2021

modulation=sin(f0*dataX+phi0);
sigVec = cos(2*pi*f1*dataX).*modulation;
sigVec = snr*sigVec;


