function I = s13(x, y, n) 

I = 0 ; 

for i = 1:2:n-2
    I = I + ( x(i+2) - x(i) )*( y(i) + 4*y(i+1) + y(i+2) )/6 ;
end

end
