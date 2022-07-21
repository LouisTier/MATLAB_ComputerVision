clear all;
close all;

I = imread('bureau256.png');
figure();
imshow(I);

B = strel('square',5); %élément de structure : masque binaire
%On peut choisir différentes formes : ’diamond’, ’square’, ’line’ et modifier 
%sa taille

%Le gradient morphologique correspond généralement à la différence entre
%l'image dilatée/érodée et I.

IM2 = imdilate(I, B); %Permet de dilater une image I avec le masque B
IM3 = imerode(I, B); %Permet d'éroder une image I avec le masque B
%erosion noircit et dilatation blanchit

IM_Grad_Morpho = abs(IM2 - IM3); %Max - Min soit dilation - erosion
%Permet de detecter les contours
figure();
imshow(IM_Grad_Morpho);
%Les contours sont en blanc donc quand on seuille, on veut garder les valeurs 
%blanches à 1

IM_Grad_Interieur = I - IM3; %originale - erosion
IM_Grad_Exterieu = IM2 - I; %dilatation - originale

##figure();
##imshow(IM_Grad_Morpho); title('Gradient Morphologique')
##figure();
##imshow(IM_Grad_Interieur); title('Gradient Interieur')
##figure();
##imshow(IM_Grad_Exterieu); title('Gradient Exterieur')

Ic(:,:,1) = I;%On récupère la composante rouge
Ic(:,:,2) = I;%On récupère la composante verte
Ic(:,:,3) = I;%On récupère la composante bleue

seuil = 100; %on veut du blanc = 255 donc on met tout ce qui est inférieur à 100
%soit le noir, à 0 pour distinguer les contours
Iseuil = (IM_Grad_Morpho > seuil);
figure();
imshow(Iseuil);

s = size(Iseuil);

%Maintenant qu'on a une image à 0 ou à 1, on remplit les contours blancs en vert

for i = 1:s(1) %On parcourt les lignes
    for j = 1:s(2) %On parcourt les colonnes
      if Iseuil(i,j) == 1;
        Ic(i,j,2) = 255; %on dit que le pixel du contour prend la couleur vert
      end       
    end
end
figure()
imshow(Ic);
