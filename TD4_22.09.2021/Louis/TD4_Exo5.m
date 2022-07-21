clear all;
close all;

I = imread('bureau256.png');
figure();
imshow(I);

B = strel('square',5); %élément de structure : masque binaire
%On peut choisir différentes formes : ’diamond’, ’square’, ’line’ et modifier 
%sa taille

%seuiller et afficher en vert sur l'image originale 
%(utiliser l'élément structurant en 1)).

%White top hat : originale - ouverture ==> permet d'extraire les barreaux

Iouv = imopen(I,B);

White_top_hat_I = I - Iouv;

figure();
imshow(White_top_hat_I);
%les barreaux sont en blanc donc on prend un seuil afin de garder le blanc à 1

seuil = 50;
Iseuil = (White_top_hat_I >seuil);
%Maintenant qu'on a une image à 0 ou à 1, on remplit les contours blancs en vert
figure();
imshow(Iseuil); title('image seuillee');

%on prepare notre image en couleur
Ic(:,:,1) = I;%On récupère la composante rouge
Ic(:,:,2) = I;%On récupère la composante verte
Ic(:,:,3) = I;%On récupère la composante bleue

s = size(Iseuil);

for i = 1:s(1) %On parcourt les lignes
    for j = 1:s(2) %On parcourt les colonnes
      if Iseuil(i,j) == 1; %si le pixel est blanc
        Ic(i,j,2) = 255; %on dit que le pixel du contour prend la couleur vert
      end       
    end
end
figure()
imshow(Ic);