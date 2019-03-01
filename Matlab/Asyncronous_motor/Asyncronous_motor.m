v=400; %voltage in [v]
Xl1=5; %primer reactance in Ohm
Xl2=6; %secunder reactance in Ohm
R1=20; %primer resistance in Ohm
R2=21; %secunder resistance in Ohm
n_n= 2982; % nominal rotation speed [RPM]
p=2; %number of poles
f=50; %input voltage frequency [Hz]
n_s=(60*f)/p; %synchronous rotation speed [RPM]
s=((n_s)-(n_n))/(n_s); %slip in [%]
Rs=(1-s)/s; %slip dependent resistance in Ohm
I_n= 197; %nominal current [A]
M_n= 352; %nominal Torque [Nm]
J= 1.2; %moment of inertia [1/4*GD^2/kg^2]
pf=0.86; %power factor [%]
sampletime=10^(-3);