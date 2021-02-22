function sigVect = genAMFMsinusoid(dataX,snr,fres,b)
%Generate a linear chirp signal
% S = genFMsinusoid(dataX,snr,fres,pha)
% Generates a frenquency modulated sinusoid signal S. X is the vector of
% time stamps at which the samples of the signal are to be computed. SNR is
% the matched filtering signal-to-noise ratio of S and fres is the vector 
% of the frequency [f0,f1] ,and pha is the parameter of thefunction

%Tangqiao Feb 2021

a0 = 2* pi* fres(2) .* dataX 
a1 = 2 * pi *fres(1) .* dataX + b * cos(2*pi*fres(2) .* dataX)
sigVect = snr * cos(a0) .* sin(a1)