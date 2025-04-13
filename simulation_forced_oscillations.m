%%%%%%%%%%% PART 06 
clear all; 
close all; 
clc; 
%%%%%%%%%%%%%% TIME DOMAIN DISCRETIZATION 
t0 = 0; 
dt = 0.001; 
tf = 35; 
time = t0:dt:tf; 
N = length(time); 
%%%%%%%%%%%%%% PARAMETERS DEFINITION 
m = 1; 
k = 10; 
c1 = 1*sqrt(2*k*m); 
M = m*[1 0 0; 0 9/2 0; 0 0 1]; 
K = k*[1 -2 0; -2 5 -1; 0 -1 2]; 
C1 = c1*[1 0 0; 0 0 0; 0 0 1]; 
%%%%%%%%%%%%%%%%%%% ODE-SOLVER  
F0 = 2; 
omega = 0.5*sqrt(k/m); 
y0 = [0 0 0 0 0 0]; 
[t,y1] = ode45(@(t,y1) vib_force(t,y1,M,K,C1,F0,omega), time, y0);

%%%%%%%%%%%%%%%%%%%
figure (1)
plot(t,y1(:,1),'k-',t,y1(:,2),'b-',t,y1(:,3),'r-','linewidth',2) 
legend ('position: x(t)','position: y(t)','position: z(t)')
xlabel ('time (sec)'); ylabel ('position: x(t),y(t),z(t)'); box on; grid on; 
% plot(t,y1(:,4),'k-',t,y1(:,5),'b-',t,y1(:,6),'r-','linewidth',2) 
% legend ('Velocity: V_x','Velocity: V_y','Velocity: V_z')
% xlabel ('time (sec)'); ylabel ('Velocity: V_x,V_y,V_z'); box on; grid on; 