clear all;
close all;

I = imread('oizo.tif'); %On charge l'image
Seuil = f_th_vallee(I); %On cherche le seuil de l'image I 
Iseuil = (I > Seuil); %On seuille l'image I

figure();
subplot(2,2,1); imshow(I); title('Image originale');
subplot(2,2,2); imshow(Iseuil); title('Image seuillée');
subplot(2,2,3); imhist(I); title('Histogramme original');
subplot(2,2,4); imhist(Iseuil); title('Histogramme lissé'); %Problème






