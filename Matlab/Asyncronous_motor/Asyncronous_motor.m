Un=400; %nominal voltage in [v]
cosfi=0.85; %power factor [%]
In=197*(cosfi-1i*sin(acos(cosfi))); %nominal current in [A]
In_abs=abs(In);

Pn=110000; %nominal power in [W]
p=2; %number of poles
nn= 2983; % nominal rotation speed [RPM]
Z=Un/In; %impedance in [ohm]

U=400; %input voltage in [V]
f=50; %input frequency in [Hz]
omega=2*pi*f;
ns=(60*f)/(p/2); %synchronous rotation speed [RPM]
%s=((ns)-(nn))/(ns); %slip in [%]
s=0.0056;

R1=0.03083; %in [ohm]
R2=R1;
Rm=R2*((1-s)/s);

sampletime=10^(-3);

Im=In_abs*1i*sin(acos(cosfi));
Im_abs=abs(Im);
Xm=Un/Im;
I2=In+Im;
I2_abs=abs(I2);