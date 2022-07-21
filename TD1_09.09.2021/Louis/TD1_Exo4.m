pkg load image; 

Lune = imread('Lune.png'); #Charge l'image
figure(); #Crée une fenêtre 2 dédiée à l'affichage
imshow(Lune); #Affiche l'image (affichage 8 bits

figure(), imagesc(Lune); #Retourne une image de la matrice avec des couleurs
 #selon les valeurs de chacun des éléments
 #Affichage normalisé
 
Lune_Grise = rgb2gray(Lune);#Transforme l'image de couleur en différents gris
figure();
imshow(Lune);
title('Image transformée en niveaux de gris');

#L'image est codée en uint8 soit sur 8 bits.

Lune2 = uint16(Lune); #On code sur 16 bits au lieu de 8
max1 = max(max(Lune));
max2 = max(max(Lune2));

LL = 5*Lune;
LL2 = 5*Lune2;

figure();
imagesc(LL);

figure();
imagesc(LL2);

#Pourquoi y a-t-il une différence entre la multiplication du uint8 et uint16 ??


% Fonction du professeur de normalisation
function [imnorm] = f_normalisation_3D(I)

I = double(I);
M = max(max(max(I)));
m = min(min(min(I)));

imnorm = (I - m)./(M -m);

endfunction

Ln = f_normalisation_3D(Lune);

gamma = 3;
Lgamma1 = Ln .^ gamma; %assombrit les zones sombres
Lgamma2 = Ln .^ (1/gamma); %éclaircit les zones sombres

figure();
imagesc(Lgamma1);

figure();
imagesc(Lgamma2);


%On cherche une valeur de gamma pour faire ressortir les cratères au mieux