function [x,y] = multirk4(func,initial_val, xint, xend,h)

y(1,:) = initial_val; % Initial Values

x = xint:h:xend;

Nx_pts = length(x); 

Fi = zeros(Nx_pts, 2);

for i = 1:Nx_pts-1
    
    K1 = func(x(i) , y(i,:));
    
    K2 = func(x(i) + h/2 , y(i,:) + K1*h/2);
    
    K3 = func(x(i) + h/2 , y(i,:) + K2*h/2);
    
    K4 = func(x(i) + h , y(i,:) + K3*h);
    
    Fi(i,:) = (K1 + 2*K2 + 2*K3 + K4) / 6;
    
    y(i+1,:) = y(i,:) + Fi(i,:)*h;
end
