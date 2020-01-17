function I = trap( x, y, n) 

I = 0 ; 

for i = 1:n-1
    I = I + 0.5 * ( y(i) + y(i+1) )*( x(i+1) - x(i) ) ;
end

