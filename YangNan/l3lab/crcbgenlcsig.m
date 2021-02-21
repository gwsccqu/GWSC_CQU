function sigVec = crcbgenlcsig(dataX,snr,qcCoefs,phi0)
% Generate a linear chirp signal
% S = CRCBGENLSIG(X,SNR,C,PHI0)
% Generates a linear chirp signal S. X is the vector of
% time stamps at which the samples of the signal are to be computed. SNR is
% the matched filtering signal-to-noise ratio of S and C is the vector of
% two coefficients [a1, a2] that parametrize the phase of the signal:
% a1*t+a2*t^2.  PHI0 is the phase of the signal. 

%Yang Nan, Feb 2021

phaseVec = qcCoefs(1)*dataX + qcCoefs(2)*dataX.^2;
sigVec = sin(2*pi*phaseVec+phi0);
sigVec = snr*sigVec/norm(sigVec);


