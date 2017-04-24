function thetadot = state2(t,x)
global A B u
u = 1; %step input

%define differential equation to integrate
thetadot = A*x + B*u;
end