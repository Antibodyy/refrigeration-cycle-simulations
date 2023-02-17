clear all
close all
clc

fluid = 'CO2.fld';
T1 = -10+273;
X1 = 1;
Tamb = 40+273;
[P1,H1,S1]  = refpropm('PHS','T',T1,'Q',X1,fluid);
S2 = S1;
P2 = 2.6*(Tamb-273)*100;
[T2,H2] = refpropm('TH','P',P2,'S',S2,fluid);
P3 = P2;
T3 = Tamb + 5;
[S3,H3] = refpropm('SH','T', T3, 'P', P3, fluid);
H4 = H3;
P4 = P1;
[S4,X4,T4] = refpropm('SQT','H', H4, 'P', P4, fluid);
wevap = H1-H4;
wcomp = H2-H1;
cop = (wevap-wcomp)/wcomp;



        