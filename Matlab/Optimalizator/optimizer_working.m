function [Id, Iq, f, s, Pveszt] =optimizer (omega, M, Udc)
Lm=0.0070547
L2=0.0002406
R2=0.0072
p=1

%Pveszt szamolas, hogy egy megoldas legyen
a=Lm^4
b=-4*(Lm^3)*M*R2
c=((Lm^2)*4*(M^2)*(R2^2))-(8*(Lm^2)*(R2^2)*(M^2))
Pveszt1=((-b)+sqrt((b^2)-(4*a*c)))/(2*a)
Pveszt2=((-b)-sqrt((b^2)-(4*a*c)))/(2*a)
if Pveszt1>0;
    Pveszt=Pveszt1;
elseif Pveszt2>0;
    Pveszt=Pveszt2;
end
%Iq Id szamolas Pveszthez
a1=2*(Lm^2)*R2
b1=(Lm*2*M*R2)-(Pveszt*(Lm^2))
c1=(M^2)*R2
Iq=sqrt(abs(((-b1)+sqrt((b1^2)-(4*a1*c1)))/(2*a1)))
Id=(M)/(Lm*Iq)

s=(((M*omega)/(3*R2*(Iq^2)))+1)^(-1)
n=(60*omega)/(2*pi)
f=-((n*p)/(60*(s-1)))
idm=(Udc/2)/(2*pi*f*Lm)
M_max=idm^2*Lm

if M>M_max;
Id=idm
Iq=idm
M=M_max
end
% X2=L2*2*pi*f
% Xm=Lm*2*pi*f
% Zn_c=R2+(1i*X2)+((1/(1i*Xm))+(1/(R2+(1i*X2)+(R2*((1-s)/s)))))^(-1)
% Zn=abs(R2+(1i*X2)+((1/(1i*Xm))+(1/(R2+(1i*X2)+(R2*((1-s)/s)))))^(-1))
% 
% U=Zn*sqrt(Iq^2+Id^2)
% 
% if U>(Udc/2);

