fluid_low = 'C02.fld';
T_low = -40+273;
T_amb = 40 +273;
T_superheat = 5;
Q_1 = 1;
[P1, H1, S1] = refpropm('PHS', 'T', T_low, 'Q', Q_1, fluid_low);
T2 = T_low + T_superheat;
P2 = P1;
[H2, S2] = refpropm('HS', 'T', T2, 'P', P2, fluid_low);
S3 = S2;
T_receiver = -20+273;
[H6, S6] = refpropm('HS', 'T', T_receiver, 'Q', 0, fluid_low);
[H8, S8] = refpropm('HS', 'T', T_receiver, 'Q', 1, fluid_low);
H9 = H8;
H7 = H6;
Q_L = 10*1000;  
m_liquid = Q_L/(H1-H7);


fluid_high = 'propane.fld';

