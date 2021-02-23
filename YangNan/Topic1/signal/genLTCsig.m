function sigVec = genLTCsig(dataX,snr,ta,f0,f1,phi0,L)
% Generate a  linear transient chirp signal
% dataX is the vector of time stamps at which
% the samples of the signal are to be computed. 
%SNR is the matched filtering signal-to-noise 
% ratio of the signal. ta and L are parameters to define non-zero domain.
% modulated partf. f0 and f1 are frequencies. phi0 is a phase. 

%Yang Nan, Feb 22nd, 2021


sigVec = sin(2*pi*(f0*(dataX-ta)+f1*(dataX-ta).^2)+phi0);
sigVec = sigVec.*(dataX>=ta & dataX<=ta+L) + 0*(dataX<ta | dataX>ta+L);
sigVec = snr*sigVec/norm(sigVec);


