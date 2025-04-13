function dydt = vib_force (t,y,M,K,C,F0,omega) 
dydt = zeros(6,1);
FF = [F0*sin(omega.*t);0;0]; 
MCKF = inv(M)*(-C*[y(4);y(5);y(6)]-K*[y(1);y(2);y(3)]+FF); 

dydt(1) = y(4); 
dydt(2) = y(5); 
dydt(3) = y(6); 
dydt(4) = MCKF(1); 
dydt(5) = MCKF(2); 
dydt(6) = MCKF(3); 