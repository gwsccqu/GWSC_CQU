function sigVect = genlcsig(dataX,snr,fres,pha)
%Generate a linear chirp signal
% S = genlcsig(dataX,SNR,FRES,PHA)
% Generates a linear chirp signal S. X is the vector of
% time stamps at which the samples of the signal are to be computed. SNR is
% the matched filtering signal-to-noise ratio of S and fres is the vector 
% of the frequency [f0,f1] ,and pha is the parameter of the phase of the 
% function

%Tangqiao Feb 2021

angle = 2*pi*(fres(1)*dataX + fres(2)*dataX.^2) 
sigVect = snr * sin(angle +pha)