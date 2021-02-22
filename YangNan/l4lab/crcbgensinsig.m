function sigVec = crcbgensinsig(dataX,snr,f0,phi0)
% Generate a sinusoidal signal
% S = CRCBGENSINSIG(X,A,F0,PHI0)
% Generates a quadratic sinusoidal signal S. X is the vector of
% time stamps at which the samples of the signal are to be computed. SNR is
% the matched filtering signal-to-noise ratio of S. F0 is the frequency of
% the signal and PHI0 is the phase of the signal. 

%Yang Nan, Feb 2021

sigVec = sin(2*pi*f0*dataX+phi0);
sigVec = snr*sigVec;


