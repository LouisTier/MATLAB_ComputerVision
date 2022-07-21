pkg load image; 

Lune = imread('Lune.png'); #Charge l'image
figure(); #Cr�e une fen�tre 2 d�di�e � l'affichage
imshow(Lune); #Affiche l'image (affichage 8 bits

figure(), imagesc(Lune); #Retourne une image de la matrice avec des couleurs
 #selon les valeurs de chacun des �l�ments
 #Affichage normalis�
 
Lune_Grise = rgb2gray(Lune);#Transforme l'image de couleur en diff�rents gris
figure();
imshow(Lune);
title('Image transform�e en niveaux de gris');

#L'image est cod�e en uint8 soit sur 8 bits.

Lune2 = uint16(Lune); #On code sur 16 bits au lieu de 8
max1 = max(max(Lune));
max2 = max(max(Lune2));

LL = 5*Lune;
LL2 = 5*Lune2;

figure();
imagesc(LL);

figure();
imagesc(LL2);

#Pourquoi y a-t-il une diff�rence entre la multiplication du uint8 et uint16 ??


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
Lgamma2 = Ln .^ (1/gamma); %�claircit les zones sombres

figure();
imagesc(Lgamma1);

figure();
imagesc(Lgamma2);


%On cherche une valeur de gamma pour faire ressortir les crat�res au mieux