function sigVec = Eds(dataX,snr,f0,ta,tau,phy0,L)


%Yaojintao, Feb 2021

phaseVec = exp(-(dataX-ta)/tau).*sin(2*pi*f0*dataX+phy0);
sigVec=phaseVec.*(dataX>=ta & dataX<=ta+L) + 0*(dataX<ta | dataX>ta+L);
sigVec = snr*sigVec/norm(sigVec);