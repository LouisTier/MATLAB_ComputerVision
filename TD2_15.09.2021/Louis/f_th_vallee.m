function [SM_vallee] = f_th_vallee(I)

H = f_histo_prof(I); %On calcule l'histogramme de I

%Param�tres de lissage
s = 19;
m = ones(1,s)/s;

%Histogramme Liss�
H_Lisse = conv2(H, m, 'same');

%On parcourt de la deuxi�me � l'avant derni�re valeur
for i = 2:length(H_Lisse)-1
  if (H_Lisse(i) < H_Lisse(i-1)) & (H_Lisse(i) < H_Lisse(i+1))
%On compare les �l�ments � gauche et � droite pour s'assurer d'un minimum local
    minimum = H_Lisse(i);
  end
end

SM_vallee = minimum;
%Calcule le seuil minimal dans une vall�e d�un histogramme liss�