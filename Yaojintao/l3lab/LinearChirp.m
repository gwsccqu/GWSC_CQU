function sigVec= LinearChirp(dataX,snr,f0,f1,phy0);


%Yaojintao Feb 2021

phaseVec=f0*dataX+f1*dataX.^2;
sigVec=sin(2*pi*phaseVec+phy0);
sigVec=snr*sigVec/norm(sigVec);