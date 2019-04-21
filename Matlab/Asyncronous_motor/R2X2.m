Un=230
In_abs=197
Is=1497.2
sn=0.0056
Xm_n=2.2163
cosfin=0.85
syms R_2 X_2
[R_2, X_2] = solve(R_2+(1i*X_2)+((1/(1i*Xm_n))+(1/(R_2+(1i*X_2)+(R_2*((1-sn)/sn)))))^(-1)==Un/(In_abs*(cosfin-(1i*sin(acos(cosfin))))), Un/Is==sqrt((2*X_2)^2+(2*R_2)^2))
R__2=(double(R_2))
X__2=(double(X_2))
if real(X__2(1))>0
    X2_n=abs(X__2(1))
elseif real(X__2(2))>0
    X2_n=abs(X__2(2))
else
    X2_n=abs(X__2(3))
end
R2=(sqrt((Un/Is)^2-(2*X2_n)^2))/2
