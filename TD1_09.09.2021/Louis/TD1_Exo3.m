%Pour effectuer certains traitements d'images, il est primordial de normaliser 
%l'image et donc de se ramener à des valeurs e[0;1] pour les pixels

%im1 = Image_Grise et im2 = Valeur_Pixel et im3 =  ValeurS_Pixel
%Ici, im1 et im2 ne sont pas normalisées (valeur(s) > 1)

##figure(5);
##imagesc(Valeur_Pixel);
##colormap(gray);
##title('Image Normalisée');

%Pour calculer le max et le min d'une image (retour d'une seule valeur 
Image_Etudiee = imread('baboon_ng.jpg'); %Charge l'image

Valeur_Max = max(max(max(Image_Etudiee))); 
Valeur_Min = min(min(min(Image_Etudiee)));
%Pour un vecteur 1D : il faut un max
%Pour un vecteur 2D = une image en NG (niveau de gris), il faut 2 max
%Pour un vecteur 3D = une image en couleur, il faut 3 max

% Fonction de normalisation
function [imnorm] = f_normalisation_3D(I)

I = double(I);
M = max(max(max(I)));
m = min(min(min(I)));

imnorm = (I - m)./(M -m);

endfunction

InNorm = f_normalisation_3D(Image_Etudiee);

% Fonction d'inversion des niveaux de gris
function [iminv] = f_inverse_3D(I) %A faire que sur 
  
I = double(I);
M = max(max(max(I)));

iminv = (M-I);

endfunction

InInv = f_inverse_3D(Image_Etudiee); %Problème pour de la couleur

figure(),
imagesc(InNorm);

figure();
imagesc(InInv);