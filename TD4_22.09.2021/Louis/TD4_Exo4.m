clear all;
close all;

I = imread('bureau256.png');
figure();
imshow(I);

B = strel('square',5); %�l�ment de structure : masque binaire
%On peut choisir diff�rentes formes : �diamond�, �square�, �line� et modifier 
%sa taille

%"rectangle", DIMENSIONS = 'rectangle', [ligne, colonne]
%"disk", RADIUS

%L'ouverture est compos�e d'une �rosion puis d'une dilatation. 
%La fermeture est compos�e d'une dilatation puis d'une �rosion

IM_ouverture = imopen(I, B); %ouverture assombrit
IM_fermeture = imclose(I, B) %fermeture eclarcit

figure();
subplot(1,3,1); imshow(I); title('Image originale');
subplot(1,3,2); imshow(IM_ouverture); title('Image ouverture');
subplot(1,3,3); imshow(IM_fermeture); title('Image fermeture');
