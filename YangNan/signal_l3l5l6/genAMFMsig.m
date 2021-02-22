function sigVec = genAMFMsig(dataX,snr,b,f0,f1)
% Generate a  AM-FM signal
% S = GENAMSIG(X,SNR,B,F0,F1)
% Generates a AM-FM signal S. X is the vector of
% time stamps at which the samples of the signal are to be computed. SNR is
% the matched filtering signal-to-noise ratio of S. B is the coefficient of
% modulated partf. F0 and F1 are frequencies. 

%Yang Nan, Feb 2021

modulation=sin(2*pi*f0*dataX+b*cos(2*pi*f1*dataX));
sigVec = cos(2*pi*f1*dataX).*modulation;
sigVec = snr*sigVec/norm(sigVec);


