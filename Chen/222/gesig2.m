function sig2 = gesig2 (dataX,snr,f0,f1,phy0) 
sig2=snr*sin(2*pi*f0*dataX+phy0)+snr*sin(2*pi*f1*dataX+phy0);
