function sigVec = genEDSsig(dataX,snr,ta,f0,tao,phi0,L)
% Generate a exponentially damped sinusoid signal
% dataX is the vector of time stamps at which
% the samples of the signal are to be computed. 
%SNR is the matched filtering signal-to-noise 
% ratio of the signal. ta and L are parameters to define non-zero domain.
% modulated partf. f0 is the frequency. phi0 is a phase and tao is a time factor. 

%Yang Nan, Feb 22nd, 2021


sigVec = exp(-(dataX-ta)/tao).*sin(2*pi*f0*dataX+phi0);
sigVec = sigVec.*(dataX>=ta & dataX<=ta+L) + 0*(dataX<ta | dataX>ta+L);
sigVec = snr*sigVec;


