%%%%%%%%%%% PART 05 
clear all; 
close all; 
clc; 
%%%%%%%%%%%%%% TIME DOMAIN DISCRETIZATION 
t0 = 0; 
dt = 0.001; 
tf = 25; 
time = t0:dt:tf; 
N = length(time); 
%%%%%%%%%%%%%% PARAMETERS DEFINITION 
m = 1; 
k = 10; 
c1 = 0; 
c2 = 0.5*sqrt(k*m); 
c3 = sqrt(2*k*m);
c4 = 2*sqrt(k*m);
M = m*[1 0 0; 0 9/2 0; 0 0 1]; 
K = k*[1 -2 0; -2 5 -1; 0 -1 2]; 
C1 = c1*[1 0 0; 0 0 0; 0 0 1]; 
C2 = c2*[1 0 0; 0 0 0; 0 0 1]; 
C3 = c3*[1 0 0; 0 0 0; 0 0 1]; 
C4 = c4*[1 0 0; 0 0 0; 0 0 1]; 
%%%%%%%%%%%%%%%%%%% ODE-SOLVER  
y0 = [0.1 0 0 0 0 0];
[t,y1] = ode45(@(t,y1) vib_free(t,y1,M,K,C1), time, y0);
[t,y2] = ode45(@(t,y2) vib_free(t,y2,M,K,C2), time, y0);
[t,y3] = ode45(@(t,y3) vib_free(t,y3,M,K,C3), time, y0);
[t,y4] = ode45(@(t,y4) vib_free(t,y4,M,K,C4), time, y0);
%%%%%%%%%%%%%%%%%%%
figure (1)
% plot(t,y1(:,1),'k-',t,y1(:,2),'b-',t,y1(:,3),'r-','linewidth',2) 
% legend ('position: x(t)','position: y(t)','position: z(t)')
% xlabel ('time (sec)'); ylabel ('position: x(t),y(t),z(t)'); box on; grid on; 
plot(t,y1(:,4),'k-',t,y1(:,5),'b-',t,y1(:,6),'r-','linewidth',2) 
legend ('Velocity: V_x','Velocity: V_y','Velocity: V_z')
xlabel ('time (sec)'); ylabel ('Velocity: V_x,V_y,V_z'); box on; grid on; 
%%%%%%%%%%%%%%%%%%%
figure (2)
plot(t,y2(:,1),'k-',t,y2(:,2),'b-',t,y2(:,3),'r-','linewidth',2) 
legend ('position: x(t)','position: y(t)','position: z(t)')
xlabel ('time (sec)'); ylabel ('position: x(t),y(t),z(t)'); box on; grid on; 
%%%%%%%%%%%%%%%%%%%
figure (3) 
plot(t,y3(:,1),'k-',t,y3(:,2),'b-',t,y3(:,3),'r-','linewidth',2) 
legend ('position: x(t)','position: y(t)','position: z(t)')
xlabel ('time (sec)'); ylabel ('position: x(t),y(t),z(t)'); box on; grid on; 
%%%%%%%%%%%%%%%%%%%
figure (4) 
plot(t,y4(:,1),'k-',t,y4(:,2),'b-',t,y4(:,3),'r-','linewidth',2) 
legend ('position: x(t)','position: y(t)','position: z(t)')
xlabel ('time (sec)'); ylabel ('position: x(t),y(t),z(t)'); box on; grid on; 