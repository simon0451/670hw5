%% Problem 1
%equation of motion:
% J(thetaodd)+b(thetaod)+kthetao = kthetai
global A B u

%made up moment of inertia, damping, and spring constant
J = 1;
b = 1;
k = 10;

%define system in state space form (these are the A,B,C,D values from the
%standard form equaition)
A = [0 1; -k/J -b/J];
B = [0 k/J];
C = [1 0];
D = 0;

%define simulation parameters
x0 = [-1 0]; %these are the initial conditions (theta out, dtheta out)
tstart = 0; %start time
tstop = 10; %end time
tspan = [tstart tstop];

%numerically integrate differential equation defined in function 'state2.m'
[t,x] = ode23('state2',tspan,x0);
y = C*x' +D*u; %calculate output

%plot output
plot(t,y)
title('System Output vs. Time, ODE23 Ogata B-3-13')
xlabel('Time (s)')
ylabel('Output (radians)')
grid on





