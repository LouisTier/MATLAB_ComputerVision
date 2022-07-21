function [iminv] = f_inverse(I)
  
M = max(max(I));

iminv = M - I;
endfunction