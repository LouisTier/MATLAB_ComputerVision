function Entropie = f_entropie(I)
  
  S = size(I);
  nbre_pix = S(1) * S(2);
  
  Entropie = 0;
  
  Hist = imhist(I);
  s = size(Hist);

  for i = 1:s(1)
    
      P(i) = Hist(i) / nbre_pix;
      
      if P(i) == 0
        IntSomme (i) = 0;
      else 
        IntSomme(i) = P(i)*log2(P(i));
      endif
    
      Entropie = Entropie - IntSomme(i);
      
  endfor
  
  Entropie = Entropie;
  
endfunction 
