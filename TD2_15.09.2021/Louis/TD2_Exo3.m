%Penser à faire "pkg load image" avant chaque TD
clear all;
close all;

%On charge l'image en couleur
Ic = imread('clown.bmp'); 

%On calcule la moyenne de l'image originale
Moyenne = mean(mean2(Ic));
%Retourne une seule valeur : fais la moyenne de chaque couleur où chaque valeur
%est renvoyée dans un vecteur. Puis ensuite on refait la moyenne du vecteur et donc
%des 3 couleurs

Ic_R = Ic(:,:,1); %On prend le canal de couleur 1 de l'image originale
Ic_G = Ic(:,:,2); %On prend le canal de couleur 2 de l'image originale
Ic_B = Ic(:,:,3); %On prend le canal de couleur 3 de l'image originale

Moyenne_R = mean(mean2(Ic_R)); %On fait la moyenne sur le canal Rouge
Moyenne_G =  mean(mean2(Ic_G)); %On fait la moyenne sur le canal Vert
Moyenne_B =  mean(mean2(Ic_B)); %On fait la moyenne sur le canal Bleu

K_red = Moyenne ./ Moyenne_R; %Formule de calcul du TD
K_green = Moyenne ./ Moyenne_G;
K_blue = Moyenne ./ Moyenne_B;

R_Sortie = K_red .* Ic_R; %Formule de calcul du TD
G_Sortie = K_green .* Ic_G;  
B_Sortie = K_blue .* Ic_B;

%Maintenant qu'on a tous les canaux de sortie, on cherche à reconstruire l'image

Ic_Sortie(:,:,1) = R_Sortie;
Ic_Sortie(:,:,2) = G_Sortie;
Ic_Sortie(:,:,3) = B_Sortie;

figure();
subplot(3,1,1); imhist(Ic_R); title('Histogramme Rouge');
subplot(3,1,2); imhist(Ic_G); title('Histogramme Vert');
subplot(3,1,3); imhist(Ic_B); title('Histogramme Bleu');

figure();
subplot(1,2,1); imshow(Ic); title('Image de couleur Originale');
subplot(1,2,2); imshow(Ic_Sortie); title('Image de couleur Gray World');