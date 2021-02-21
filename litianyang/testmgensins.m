f0=10;
phi0=10;
A=10;
sampf=100*f0;
sampintrvl=1/sampf;
t=0:sampintrvl:1.0;
y=mgensins(t,A,f0,phi0);
plot(t,y)