function [thetaod] = state(t,x)
global u k J b
x1d = x(2);
x2d = k/J*u-k/J*x(1)-b/J*x(2);

thetaod = [x1d; x2d];
end