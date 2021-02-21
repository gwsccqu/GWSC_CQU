function sigVec = mgensinsig(dataX,snr,frequency,initialPhase)
% Generate a Sinusoidal signal 
% S = MGENSINSIG(X,SNR,FRE,INIP)
% Generates a Sinusoidal signal S. X is the vector of
% time stamps at which the samples of the signal are to be computed. SNR is
% the matched filtering signal-to-noise ratio of S. FRE is the coefficient 
% that parametrize the phase of the signal: 2*pi*freq1*t and INIP is the 
% initialphase of the signal


%Li Tianyang, February 2021

phaseVec = 2*pi*frequency.*dataX+initialPhase;
sigVec = sin(phaseVec);
sigVec = snr*sigVec/norm(sigVec);
