function sigVec = SineGaussian(dataX,snr,qcCoefs,f0,phy0)



%Yaojintao Feb 2021

GassVec=exp(-(dataX-qcCoefs(1)).^2/(2*qcCoefs(2)^2));
sigVec = GassVec.*sin(2*pi*f0*dataX+phy0);
sigVec = snr*sigVec/norm(sigVec);