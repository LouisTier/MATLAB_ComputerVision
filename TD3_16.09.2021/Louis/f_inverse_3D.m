function [iminv] = f_inverse_3D(I)
  
M = max(max(max(I)));

iminv = (M-I);
