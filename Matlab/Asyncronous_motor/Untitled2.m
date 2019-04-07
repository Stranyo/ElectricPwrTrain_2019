Un=230
In=197
Is=1497.2
s=0.0056
Xm=2.2163
cosfi=0.85
syms R2 X2
[R2, X2] = solve((R2+R2*((1-s)/s)+1i*Xm)/(R2+R2*((1-s)/s)+1i*X2+1i*Xm)+R2+1i*X2==Un/(In*(cosfi-1i*sin(acos(cosfi)))), Un/Is==sqrt((2*X2)^2+(2*R2)^2))
double(X2)
abs(double(X2))