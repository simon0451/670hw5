%this file runs the simulink program for Problem 2
J = 1; %kg*m^2
b = 6.3264; %J*s/rad
k = 10; %N/m

%executing simulation
sim('B_3_13')

%label making
damper = num2str(b); %making a string out of the damper value
massmo = num2str(J);
springcon = num2str(k);
txt1 = strcat('b: ',damper,' J*s/rad');
txt2 = strcat('J: ',massmo,' kg*m^2');
txt3 = strcat('k: ',springcon,' N/m');

%plotting results
figure(5)
plot(xout)
grid on
title('(Simulink) Critically Damped Output for a Step Input')
xlabel('Time (s)')
ylabel('Output Angle (rad)')
xmin = 0;
xmax = 10;
ymin = -1;
ymax = 2.5;
text(.75*xmax,.8*ymin,txt1)
text(.75*xmax,.65*ymin,txt2)
text(.75*xmax,.5*ymin,txt3)