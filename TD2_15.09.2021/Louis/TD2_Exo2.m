%Penser � faire "pkg load image" avant chaque TD
clear all;
close all;

%On charge l'image du bureau
Bureau = imread('bureau256_col.png'); 
%C'est une image grise cod�e en couleur

%Image en couleur dont on extrait les composantes
Bureau_R = Bureau(:,:,1); 
%Toutes les lignes et toutes les colonnes donc tout l'image du canal 1 
%soit la couleur rouge de l'image Bureau
Bureau_G = Bureau(:,:,2); 
Bureau_B = Bureau(:,:,3);

%On affiche l'image originale et les 3 canaux
figure();
subplot(1,4,1); imshow(Bureau); title('Couleur');
subplot(1,4,2); imshow(Bureau_R); title('R');
subplot(1,4,3); imshow(Bureau_G); title('G');
subplot(1,4,4); imshow(Bureau_B); title('B');

Bureau_Gris = rgb2gray(Bureau);
%Permet de repr�senter l'image Bureau en niveaux de gris

figure();
subplot(1,4,1); imshow(Bureau_Gris); title('Niveau de Gris');
subplot(1,4,2); imshow(Bureau_R); title('R');
subplot(1,4,3); imshow(Bureau_G); title('G');
subplot(1,4,4); imshow(Bureau_B); title('B');

%Si on avait eu une image seulement en niveaux de gris:
%Bureau_Couleur = Bureau : on cr�e le 1er plane
%Bureau_Couleur(:,:,2) = Bureau; on cr�e le 2�meplan donc le Vert
%Bureau_Couleur(:,:,3) = Bureau; on cr�e le 3�me plan soit le Bleu

%On charge l'image du babouin
Babouin = imread('baboon_ng.jpg'); 


%Image en couleur dont on extrait les composantes
Babouin_R = Babouin(:,:,1); 
%Toutes les lignes et toutes les colonnes donc tout l'image du canal 1 
%soit la couleur rouge de l'image Bureau
Babouin_G = Babouin(:,:,2); 
Babouin_B = Babouin(:,:,3);

%On affiche l'image originale et les 3 canaux
figure();
subplot(1,4,1); imshow(Babouin); title('Couleur');
subplot(1,4,2); imshow(Babouin_R); title('R');
subplot(1,4,3); imshow(Babouin_G); title('G');
subplot(1,4,4); imshow(Babouin_B); title('B');

Babouin_Gris = rgb2gray(Babouin);
%Permet de repr�senter l'image Bureau en niveaux de gris

figure();
subplot(1,4,1); imshow(Babouin_Gris); title('Niveau de Gris');
subplot(1,4,2); imshow(Babouin_R); title('R');
subplot(1,4,3); imshow(Babouin_G); title('G');
subplot(1,4,4); imshow(Babouin_B); title('B');