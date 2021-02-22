function sigVec= Sinusoidal(dataX,snr,f0,phy0)


%Yaojintao Feb 2021

sigVec=snr*sin(2*pi*f0*dataX+phy0);