clear all;
close all;

I = imread('pieces.png');
I2 = I;
figure();
imshow(I);

B = strel('square',5); %élément de structure : masque binaire
%On peut choisir différentes formes : ’diamond’, ’square’, ’line’ et modifier 
%sa taille

IRouge = I(:,:,1);

%On choisit le plan rouge car on distingue mieux les pièces
IPlanChoisi_double = double(IRouge);

seuil = 200;
Iseuil = (IPlanChoisi_double > seuil); %cf exo 7, on reprend les mêmes conditions

figure();
imshow(Iseuil);title('Image Seuillée');

%erosion noircit une image
while Iseuil(i,j) ~= 1 %tant que les pixels ne sont pas tous noir
  Iero = imerode(I,B);
  Iero2 = imerode(Iero,B);
  a = Iero
  
  



##%On suit les étapes du schéma explicatif
##Iero1 = imerode(I, B); %Permet d'éroder une image I avec le masque B
##%erosion noircit et dilatation blanchit
##Iouv1 = imopen(I,B);
##Isomme1 = I + Iouv1;
##
##Iero2 = imerode(Iero1,B);
##Iouv2 = imopen(Iero2,B);
##Iero_ultime = Isomme1+Iouv2;
##
##figure();
##imshow(Iero_ultime);
##
##%TANT QUE L IMAGE N EST PAS BLANCHE, on continue les erosions
