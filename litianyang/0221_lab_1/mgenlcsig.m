function sigVec = mgenlcsig(dataX,snr,lcCoefs,initialPhase)
% Generate a linear chirp signal 
% S = MGENLCSIG(X,SNR,C,PHI)
% Generates a linear chirp signal S. X is the vector of
% time stamps at which the samples of the signal are to be computed. SNR is
% the matched filtering signal-to-noise ratio of S. C is the vector of
% two coefficients [freq1, freq2] that parametrize the phase of the signal:
% freq1*t+freq2*t^2. And PhI is the initialphase of the signal.


%Li Tianyang, February 2021

phaseVec = lcCoefs(1)*dataX+lcCoefs(2)*dataX.^2+initialPhase;
sigVec = sin(phaseVec);
sigVec = snr*sigVec/norm(sigVec);