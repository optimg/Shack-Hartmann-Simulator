function rr = zer_rad(ro, n, m)
%{
Created by Sergio Bonaque-Gonzalez. Optical Engineer.
sergio.bonaque@um.es
Auxiliary function for creating Zernike coefficients. 
%}

    rr   = zeros(size(ro));   
   	ddif = round((n - m) / 2.0);
	dsum = round((n + m) / 2.0);
    for s = 0:ddif
        numer = ((-1.0)^s) * factorial(n - s);
        denom = factorial(s) * factorial(dsum - s) * factorial(ddif - s);
        rr    = rr + ((ro.^(n - (2.0 * s)) .* numer) ./ denom);
 end
    
        
