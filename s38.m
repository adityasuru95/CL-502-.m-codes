function I = s38(x, y, n) 

I = 0 ; 

for i = 1:3:n-3
    I = I + 3*( x(i+1) - x(i) )*( y(i) + 3*y(i+1) + 3*y(i+2) + y(i+3) )/8 ;
end

end

