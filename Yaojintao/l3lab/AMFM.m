function sigVec = AMFM(dataX,snr,f0,f1,f2,b)


%Yaojintao, Feb 2021

phaseVec = sin(2*pi*f0*dataX+b*cos(2*pi*f1*dataX));
sigVec =cos(2*pi*f2*dataX).*phaseVec;
sigVec = snr*sigVec/norm(sigVec);