%% Spectrogram demo
sampFreq = 1024;
nSamples = 2048;
timeVec = (0:(nSamples-1))/sampFreq;

sigVec=gesig2(timeVec,5,200,300,0);

% Make spectrogram with different time-frequency resolution

figure;
spectrogram(sigVec, 128,127,[],sampFreq);
figure;
spectrogram(sigVec, 256,100,[],sampFreq);

%%
% Make plots independently of the spectrogram function
[S,F,T]=spectrogram(sigVec, 256,100,[],sampFreq);
figure;
imagesc(T,F,abs(S));axis xy;
xlabel('Time (sec)');
ylabel('Frequency (Hz)');