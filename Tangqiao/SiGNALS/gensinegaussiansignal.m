function sigVect = gensinegaussiansignal(dataX,snr,f0,pha,t0,delta)
%Generate a sine-gaussian-signal
% gensine-gaussian-signal(dataX,snr,fo,pha,t0,delta)
% Generates sine-gaussian-signal . X is the vector of
% time stamps at which the samples of the signal are to be computed. SNR is
% the matched filtering signal-to-noise ratio of S and f0 is the frequency
% of sin function,and pha is the parameter of the phase of the sin
% function

%Tangqiao Feb 2021

a0 =  exp(((dataX - t0).^2)/(-2 * delta * delta))
sigVect = snr * a0 .*sin(2 * pi * f0 .* dataX + pha)