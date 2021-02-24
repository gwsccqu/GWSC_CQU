function sigVec = mgenssinsig(dataX,snr,fre,phase)
% Generate a linear chirp signal 
% S = MGENLCSIG(X,SNR,C,PHI)
% Generates a linear chirp signal S. X is the vector of
% time stamps at which the samples of the signal are to be computed. SNR is
% the matched filtering signal-to-noise ratio of S. C is the vector of
% two coefficients [freq1, freq2] that parametrize the phase of the signal:
% freq1*t+freq2*t^2. And PhI is the initialphase of the signal.


%Li Tianyang, February 2021
phaseVec1 = 2*pi*fre(1)*dataX+phase(1);
sigVec1 = snr(1)*sin(phaseVec1);

phaseVec2 = 2*pi*fre(2)*dataX+phase(2);
sigVec2 = snr(2)*sin(phaseVec2);

phaseVec3 = 2*pi*fre(3)*dataX+phase(3);
sigVec3 = snr(3)*sin(phaseVec3);

sigVec = sigVec1+sigVec2+sigVec3;
sigVec = (sigVec1+sigVec2+sigVec3)/norm(sigVec);