function [Pmech M omega_mech Lm R2 L2 sb Mb szigma] = Barmilyen(Un,In_abs,fn,nn,cosfin,Is,p,U,f,s)
In=In_abs*(cosfin-1i*(sin(acos(cosfin))))
n_sync=(60*fn)/p
sn=(n_sync-nn)/n_sync
Zn=Un/In
Im_n=1i*imag(In)
Zrz=Un/Is
Xm_n=Un/Im_n
Lm=Xm_n/(2*pi*fn)
syms R_2 X_2
[R_2, X_2] = solve(R_2+(1i*X_2)+((1/(Xm_n))+(1/(R_2+(1i*X_2)+(R_2*((1-sn)/sn)))))^(-1)==Un/(In_abs*(cosfin-(1i*sin(acos(cosfin))))), Un/Is==sqrt((2*X_2)^2+(2*R_2)^2))
X__2=(double(X_2))
if real(X__2(1))>0
    X2_n=abs(X__2(1))
elseif real(X__2(2))>0
    X2_n=abs(X__2(2))
else
    X2_n=abs(X__2(3))
end
R2=(sqrt((Un/Is)^2-(2*X2_n)^2))/2
Rm_n=R2*((1-sn)/sn)
L2=X2_n/(2*pi*fn)


Xm=Lm*2*pi*f
X2=L2*2*pi*f
Rm=R2*((1-s)/s)
Z=(((1/(R2+(1i*X2)+Rm))+(1/(1i*Xm)))^(-1))+R2+(1i*X2)
I1=U/Z
Udrop=(real(I1)*R2)+(imag(I1)*X2)
U2=U-Udrop
Im=U2/(1i*Xm)
I2=I1-Im
Pmech=3*((real(I2))^2)*Rm
n=((60*f)/(p))*(1-s)
omega_mech=(n/60)*2*pi
M=Pmech/omega_mech
sb=(R2)/(sqrt((R2^2)+(X2^2)))
szigma=X2/(abs(Xm))
omega=2*pi*f
Mb=(3/2)*(p/omega)*((U^2)/((1+szigma)^2))*(1/(2*(R2+(sqrt((R2^2)+(X2^2))))))