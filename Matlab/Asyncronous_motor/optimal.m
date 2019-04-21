function [Pveszt1 Pveszt2]=optimal(U,M,omega)
Lm=0.0070547
R2=0.0072
a=Lm^4
b=-4*(Lm^3)*M*R2
c=((Lm^2)*4*(M^2)*(R2^2))-(8*(Lm^2)*(R2^2)*(M^2))
Pveszt1=((-b)+sqrt((b^2)-(4*a*c)))/(2*a)
Pveszt2=((-b)-sqrt((b^2)-(4*a*c)))/(2*a)