function sigVec = LTC(dataX,snr,f0,f1,ta,phy0,L)


%Yaojintao, Feb 2021

phaseVec = sin(2*pi*f0*(dataX-ta)+f1*(dataX-ta).^2+phy0);
sigVec=phaseVec.*(dataX>=ta & dataX<=ta+L) + 0*(dataX<ta | dataX>ta+L);
sigVec = snr*sigVec/norm(sigVec);