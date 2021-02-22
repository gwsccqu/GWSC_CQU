function sigVec = StepFM(dataX,snr,f0,f1,ta)


%Yaojintao, Feb 2021

phaseVec1 = sin(2*pi*f0*dataX);
phaseVec2 = sin(2*pi*f1*(dataX-ta)+2*pi*f0*ta);
sigVec = phaseVec1.*(dataX<=ta) + phaseVec2.*(dataX>ta);
sigVec = snr*sigVec/norm(sigVec);