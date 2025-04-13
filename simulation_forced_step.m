%%%%%%%%%%% PART 08 
clear all; 
close all; 
clc; 
%%%%%%%%%%%%%% TIME DOMAIN DISCRETIZATION 
t0 = 0; 
dt = 0.001; 
tf = 50; 
time = t0:dt:tf; 
N = length(time); 
%%%%%%%%%%%%%% PARAMETERS DEFINITION 
m = 1; 
k = 10; 
c1 = 0; 
c2 = sqrt(2*k*m); 
M = m*[1 0 0; 0 9/2 0; 0 0 1]; 
K = k*[1 -2 0; -2 5 -1; 0 -1 2]; 
C1 = c1*[1 0 0; 0 0 0; 0 0 1]; 
C2 = c2*[1 0 0; 0 0 0; 0 0 1]; 
%%%%%%%%%%%%%%%%%%% ODE-SOLVER  
y0 = [0.1 0 0 0 0 0]; 
[t,y1] = ode45(@(t,y1) vib_force_rect(t,y1,M,K,C1), time, y0);
[t,y2] = ode45(@(t,y2) vib_force_rect(t,y2,M,K,C2), time, y0);
%%%%%%%%%%%%%%%%%%%
figure (1)
plot(t,y1(:,1),'k-',t,y1(:,2),'b-',t,y1(:,3),'r-','linewidth',2) 
legend ('position: x(t)','position: y(t)','position: z(t)')
xlabel ('time (sec)'); ylabel ('position: x(t),y(t),z(t)'); box on; grid on; 
%%%%%%%%%%%%%%%%%%%
figure (2)
plot(t,y2(:,1),'k-',t,y2(:,2),'b-',t,y2(:,3),'r-','linewidth',2) 
legend ('position: x(t)','position: y(t)','position: z(t)')
xlabel ('time (sec)'); ylabel ('position: x(t),y(t),z(t)'); box on; grid on; 