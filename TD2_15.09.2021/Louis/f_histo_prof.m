 function histo = f_histo_prof(I);
 
I = uint8(I); 

L = size(I); %On r�cup�re la taille de l'image avec un couple (x,y)
histo = zeros(1,256); %On initialise un vecteur r�ponse de 1 ligne et 256 colonnes


%histoc = zeros(1,256); % histo cumule


for i = 1:L(1) %On parcourt les lignes
    for j = 1:L(2) %On parcourt les colonnes
        histo(I(i,j) +1) = histo(I(i,j) +1) +1; 
        %+1 car dans octave ne commence pas � 0
        %Compte le nombre de pixel de chaque valeur comprise entre 1 et 255
    end
end
%Construit l'histogramme d'une image 8 bits.