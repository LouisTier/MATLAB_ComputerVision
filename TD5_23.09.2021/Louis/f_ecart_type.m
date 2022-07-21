function EcartTypeI = f_ecart_type(I)
  S = size(I);
  Iv = f_variance(I);
  EcartTypeI = (1/(S(1)*S(2))).*sqrt(Iv)
  
  
endfunction