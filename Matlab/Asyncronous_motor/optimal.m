function [Pveszt Ih Im Lm s f]=optimal(U,M,omega)
p=1
Lm=0.0070547
R2=0.0072
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
%Ih Im szamolas Pveszthez
a1=2*(Lm^2)*R2
b1=(Lm*2*M*R2)-(Pveszt*(Lm^2))
c1=(M^2)*R2
Ih=sqrt(abs(((-b1)+sqrt((b1^2)-(4*a1*c1)))/(2*a1)))
Im=(M)/(Lm*Ih)
s=(((M*omega)/(3*R2*(Ih^2)))+1)^(-1)
n=(60*omega)/(2*pi)
f=-((n*p)/(60*(s-1)))


