function sigVec = genSinGaussian(dataX,snr,qcCoefs,f0,phi0)
% Generate a sine-Gaussian signal
% S = GENSINGAUSSIAN(X,SNR,C,F0,PHI0)
% Generates a Sine-Gaussian signal S. X is the vector of
% time stamps at which the samples of the signal are to be computed. SNR is
% the matched filtering signal-to-noise ratio of S and C is the vector of
% two coefficients [t0, sigma] of Gaussian part. F0 is the frequency of sine pard.  
% PHI0 is the phase of the sine part. 

%Yang Nan, Feb 2021

GaussianVec = exp(-(dataX-qcCoefs(1)).^2/(2*qcCoefs(2)^2));
SineVec=sin(2*pi*f0*dataX+phi0);
sigVec = GaussianVec.*SineVec;
sigVec = snr*sigVec;


