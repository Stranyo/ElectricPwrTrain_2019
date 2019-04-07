function [n omega R2 X2 Zn I1_abs I1 Im I2_abs I2 Xm Pmech M Rm] = motor(U,f,s)
Un=230
In=197
Is=1497.2
cosfi=0.85
p=2

Zrz=Un/Is
Lm=0.0080335
Xm=Lm*2*pi*f
L2=0.0002406
R2=0.0072
X2=L2*2*pi*f
Zn=abs(R2+(1i*X2)+((1/(1i*Xm))+(1/(R2+(1i*X2)+(R2*((1-s)/s)))))^(-1))

I1_abs=U/Zn;
I1=I1_abs*(cosfi-(1i*sin(acos(cosfi))))
Im=U/(1i*Xm)
I2=I1-Im
I2_abs=abs(I2)
Rm=R2*((1-s)/s)
Pmech=((abs(I2))^2)*3*Rm
n=((60*f)/(p/2))*(1-s)
omega=(n/60)*2*pi
M=Pmech/omega