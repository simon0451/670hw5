function hw5
%% Problem 3
%equation of motion:
% J(thetaodd)+b(thetaod)+kthetao = kthetai
global A B u
u = 1; %u is a unit step input
%made up moment of inertia, damping, and spring constant
J = 1;
b = 1;
k = 15;

%define system in state space form (these are the A,B,C,D values from the
%standard form equaition)
A = [0 1; -k/J -b/J];
B = [0; k/J];
C = [1 0];
D = 0;

%define simulation parameters
x0 = [0 -1]; %these are the initial conditions
tstart = 0; %start time
tstop = 15; %end time
tspan = tstart:.01:tstop;

%numerically integrate differential equation defined in function 'state2.m'
[t,x] = ode23(@state2,tspan,x0);
y = C*x' +D*u; %calculate output
function thetadot = state2(t,x)

%define differential equation to integrate
thetadot = A*x + B*u;
end
%plot output
figure(6)
plot(t,y)
title('System Output vs. Time, ODE23 Ogata B-3-13')
xlabel('Time (s)')
ylabel('Output (radians)')
grid on

end



