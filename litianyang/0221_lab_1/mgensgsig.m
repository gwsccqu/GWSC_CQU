function sigVec = mgensgsig(dataX,snr,timeZero,sigma,freq1,initialPhase)
% Generate a Sine-Gaussian signal
% S = MGENSGSIG(X,SNR,TIMZ,SIGM,FRE,PHI)
% Generates a Sine-Gaussian signal S. X is the vector of
% time stamps at which the samples of the signal are to be computed. SNR is
% the matched filtering signal-to-noise ratio of S. TIMZ and SIGM are
% parameters of the Gaussian function. FRE is the coefficient that
% parametrize the phase of the signal: 2*pi*freq1*t.  And PhI is the
% initialphase of the signal.


%Li Tianyang, February 2021

phaseVec = 2*pi*freq1*dataX+initialPhase;
gauFun = exp((dataX-timeZero).^2/(2*sigma^2));
sigVec = gauFun.*sin(phaseVec);
sigVec = snr*sigVec/norm(sigVec);