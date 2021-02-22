function sigVect = genstepFM(dataX,ta,f0,f1,snr)
%Generate a stepFM signal
% S = genstepFM(dataX,ta,f0,f1,snr)
% Generates a stepFM signal S. X is the vector of
% time stamps at which the samples of the signal are to be computed. SNR is
% the matched filtering signal-to-noise ratio of S and f1 is the vector 
% of  frequency  ,and ta is the parameter  of the function

ans1 = snr * sin(2*pi*f0.*dataX) 
ans2 =  snr * sin(2*pi*f1*(dataX-ta))+2*pi*f0*ta 
sigVect = ans1 .*(dataX<ta) + ans2 .*(dataX>=ta)