function sigVec = mgensins(dataX,snr,frequency,initialphase)
% Generate a Sinusoidal signal 
% S = MGENSINS(X,SNR,FRE,INIP)
% Generates a Sinusoidal signal S. X is the vector of
% time stamps at which the samples of the signal are to be computed. SNR is
% FRE is the frequency of the signal
% INIP is the initialphase of the signal


%Li Tianyang, February 2021

phaseVec = 2*pi*frequency.*dataX+initialphase;
sigVec = sin(phaseVec);
sigVec = snr.*sigVec/norm(sigVec);
