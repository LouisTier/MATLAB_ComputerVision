function [SM_vallee] = f_th_vallee(I)

H = f_histo_prof(I); %On calcule l'histogramme de I

%Paramètres de lissage
s = 19;
m = ones(1,s)/s;

%Histogramme Lissé
H_Lisse = conv2(H, m, 'same');

%On parcourt de la deuxième à l'avant dernière valeur
for i = 2:length(H_Lisse)-1
  if (H_Lisse(i) < H_Lisse(i-1)) & (H_Lisse(i) < H_Lisse(i+1))
%On compare les éléments à gauche et à droite pour s'assurer d'un minimum local
    minimum = H_Lisse(i);
  end
end

SM_vallee = minimum;
%Calcule le seuil minimal dans une vallée d’un histogramme lissé