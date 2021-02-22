function sigVec = genStemFM(dataX,snr,ta,f0,f1)
% Generate a step FM signal
% dataX is the vector of time stamps at which
% the samples of the signal are to be computed. 
%SNR is the matched filtering signal-to-noise 
% ratio of the signal. ta is a factor about ladder position.
%  f0 and f1 are frequencies. 

%Yang Nan, Feb 22nd, 2021


sigVec1 = sin(2*pi*f0*dataX);
sigVec2 = sin(2*pi*f1*(dataX-ta)+2*pi*f0*ta);
sigVec = sigVec1.*(dataX<=ta) + sigVec2.*(dataX>ta);
sigVec = snr*sigVec;























