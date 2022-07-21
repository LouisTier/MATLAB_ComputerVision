function VarianceI = f_variance(I)
  
  S = size(I);
  VarianceI = zeros(S(1),S(2)); %On initialise la matrice réponse
  
  for i = 2:S(1)-1 %Masque 3x3 donc attention aux bords !
    for j = 2:S(2)-1
      
      Masque = I(i-1:i+1,j-1:j+1); %On crée le masque 3x3
      Moyenne = mean2(Masque); %Pour chaque pixel on calcule la moyenne du masque
      
      for x = 1:3
        for y = 1:3  
          

        VarianceI(i,j) = VarianceI(i,j) + (Masque(x,y)-Moyenne).^2;
        
        endfor
      endfor
    endfor
  endfor
  VarianceI = VarianceI;
  %VarianceI = VarianceI./9;
  
endfunction
  