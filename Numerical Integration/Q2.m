function I = Q2(x, y) 

n = length(x) ;

r1 = mod( n, 2) ;

r2 = mod( n, 3) ;

if r2 == 1
    I = s38 (x, y, n) ;
    fprintf('No. of points of the form 3k+1. Hence S3/8. Not printing S1/3 or trap since S3/8 is of m,ore accuracy than trap or trap'); 
elseif r1 == 1
    I = s13 (x, y, n) ;
    fprintf('No. of ppoints is not of 3k+1, so no S3/8. It is of the form 2k+1. Hence S1/3. Not printing trap since S1/3 is more accurate than trap')
else
    I = trap (x, y, n) ; 
    fprintf( 'No. of points is neither of the form 3k+1, 2k+1. Hencve no S3/8 or SW1/3/. Hence trap. ');
end

end


