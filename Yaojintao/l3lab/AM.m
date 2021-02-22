function sigVec = AM(dataX,snr,f0,f1,phy0)


%Yaojintao Feb 2021

%haseVec =cos(2*pi*f1*dataX).*sin(2*pi*f0*dataX+phy0);
sigVec =cos(2*pi*f1*dataX).*sin(2*pi*f0*dataX+phy0);
sigVec = snr*sigVec/norm(sigVec);