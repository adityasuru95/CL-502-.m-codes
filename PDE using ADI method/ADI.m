clc
clear 

top = 100; %temperature of the plate at top
bottom = 0; %temperature of the plate at bottom
left = 75; %temperature of the plate at left
right = 50; %temperature of the plate at right
k = 0.835; % coefficient of thermal diffusivity

initaltemp = 30; %initial temperature of the plate

delx = 10;  
dely = 10;  
delt = 10;

lenx = 40; 
leny = 40;

err = 1; nt = 1;

%Determine the number of grid points
nx = (lenx / delx) + 1 ; % Also includes the boundary
ny = (leny / dely) + 1 ; % Also includes the boundary 

T = initialtemp * ones( nx, ny) ; 
Tnew = zeros(nx, ny) ; 
T(:, 1) = left ; 
T(:, ny) = right ;
T(1, :) = top ; 
T(ny, :) = bottom ; 

lambda1 = k*delt/(delx^2) ; lambda1 = (lambda1)/2 ;
lambda2 = k*delt/(dely^2) ; lambda2 = (lambda2)/2 ; 

%Formation of the coefficient matrix
temp1y = ( 1 + 2*lambda2 ) * ones(ny -2, 1) ; 
temp2y = ( -1*lambda2 ) * ones(ny -3, 1) ; 
Ay = diag(temp1y, 0) + diag(temp2y, 1) + diag(temp2y, -1) ; % When x is explicit and y is implicit. Assuming that delx and dely are different. So lambda will be diff. In this particular question both wil be same

temp1x = ( 1 + 2*lambda1 ) * ones(nx -2, 1) ; 
temp2x = ( -1*lambda1 ) * ones(nx -3, 1) ; 
Ay = diag(temp1x, 0) + diag(temp2x, 1) + diag(temp2x, -1) ; % When y is explicit and x is implicit. Assuming that delx and dely are different. So lambda will be diff. In this particular question both wil be same


while nt < 100 && err > 1e-2
    
    %Explict in x, implicit in y
    for p = 1:nx -2
        B(p, 1) = T(i, p+1) +  lambda1*( T(i+1, p+1) + T(i-1, p+1) -2*T(i, p+1) ) ; 
        B(1, 1) = B(1, 1) + lambda2*T(i, 1) ;
        B(nx -2, 1) = B(nx - 2, 1) + lambda2*T(i, ny) ;
        
        
        
    
     
    %store the temperature of every step in a matrix
    StoreT(nt,:) = T;
    
    nt = nt + 1;
end