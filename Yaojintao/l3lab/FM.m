function sigVec = FM(dataX,snr,f0,f1,b)




%Yaojintao Feb 2021

phaseVec = 2*pi*f0*dataX+b*cos(2*pi*f1*dataX);
sigVec = sin(phaseVec);
sigVec = snr*sigVec/norm(sigVec);