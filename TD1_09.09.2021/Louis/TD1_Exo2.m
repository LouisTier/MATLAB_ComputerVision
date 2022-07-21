%im1 = Image_Grise et im2 = Valeur_Pixel et im3 =  ValeurS_Pixel

clear all; %Nettoie l'espace de travail

Image_Grise = rgb2gray(Image);
%Transforme l'image de couleur en différents gris

figure(4);
imshow(Image_Grise);
title('Image transformée en niveaux de gris');

Valeur_Pixel = Image_Grise(100,200); 
%Retourne la valeur de gris du pixel de coordonnées 100 et 200

b = Image(100,200);

ValeurS_Pixel = Image(100:150,200:250); 
%Retourne la valeur de CHAQUE pixel compris entre x = 100 à 150 et y = 200 à 250  

%Pixel sombre = 0 et Pixel clair = 255  

ValeurS_Pixel_2 = Image(300:end,200:end-3); 
%Retourne la valeur de CHAQUE pixel
%end-3 implique tous sauf les 3 derniers pixels                    
%300:end indique du 300ème pixel en abscisse jusqu'au bout de l'image (sens croissant)
                             
Normalisation_Pixel = im2double(ValeurS_Pixel); 
%Normalise la valeur de pixels

%Avant une valeur était comprise entre 0 et 255, maintenant c'est entre 0 et 1
%Transforme également le type uint8 en double

%imwrite(Image, 'baboon_ng.jpg'); 
%imwrite(Image_Grise, 'baboon_ng_gris.tif');
%imwrite(Image,'baboon_ng.png'); 
%Enregistre l'image "Image" sous le nom "baboon_ng" au format ".png"