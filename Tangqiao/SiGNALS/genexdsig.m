function sigVect = genexdsig(dataX,ta,L,pha,f0,snr,tao)
%Generate a linear transient chirp signal
% lineartc(dataX,ta,L,pha,f0,f1,snr),
% Generates linear transient chirp signal .dataX is the vector of time
%  stamps at which the samples of the signal are to be computed. SNR is the 
% matched filtering signal-to-noise ratio of S and f0,f1 is the frequency
% ,and pha is the phase,L,ta is the parameter.
% function

%Tangqiao Feb 2021

index1 = find(dataX >ta+L)
index2 = find(dataX <ta)
a0 = 2*pi*f0 .* dataX +pha
sigVect = snr .* sin(a0).* exp(-(dataX-ta)/tao)
sigVect(index1) = 0
sigVect(index2) = 0
