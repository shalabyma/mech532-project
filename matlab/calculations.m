%%INPUTS
%external conditions
g = 9.81;
rho = 1.225; %assume constant
mu = 1.81E-5;

%aircraft properties
m = 2.32;
% J = ;
b_wing = 2;
c_wing = 0.18;
S_wing = b_wing*c_wing;


%% LEVEL FLIGHT

%Level Flight conditions
V_lf = 20;
alt_lf = 100;

%Results
L_lf = m*g;
CL_lf = L_lf/(0.5*rho*V_lf^2*S_wing)
Re_lf = rho*V_lf*c_wing/mu


%% BANKED TURN

%Banked Turn conditions
phi = pi/4;

%Results
N_bt = 1/cos(phi);
L_bt = m*g/cos(phi)
V_bt = sqrt(2*L_bt/(rho*S_wing*CL_lf))
Re_bt = rho*V_bt*c_wing/mu


%% CLIMB



