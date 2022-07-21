# Commentaire
# ; très important pour ne pas afficher toutes les valeurs de l'image

################################################################################
        #0. Rappels
################################################################################
%Commentaire
clc; #Clear the terminal screen and move the cursor to the upper left corner.

#a1=1; b1= 1.5;
#c1 = 2*a1 + b1^2 #Calcul basique

#x =3:9 #Renvoie [3,4,5,6,7,8,9]
#x1 = 0:0.5:2 #Renvoie une liste allant de 0 à 2 avec un pas de 0.5
#figure(1), plot(x1); #Affiche et trace les valeurs de x1 = f(indexation)
#y1 = [x1 x1; 1:12]; Ne renvoie rien : erreur (cf fenêtre de commande)

#A = [1 2 3; 4 5 6; 7 8 9]; #Renvoie matrice taille 3x3

#x2 = [-1.3 sqrt(3) (1+2+3)*4/5 a1] #Chaque espace sépare les éléments
                                  #ici 3 espaces donc 4 éléments
x3 = [1 7 5]; 
#k=x3(2); #Renvoie le deuxième éléments de la liste x3
k1 = size(x3); #Renvoie le nombre de lignes et de colonnes du tableau x3
k2 = length(x3); #Equivaut à max(size(x3)) soit le nombre d'éléments de x3

#B = rand(4,5); #Renvoie une matrice 4x5 dont les éléments sont aléatoirement 
               #pris entre 0 et 1
#D = B + B; #Calcul basique, renvoie à nouveau une matrice 4x5
#F = 3*B; #Calcul basique, renvoie à nouveau une matrice 4x5
#C = B'; #Transpose la matrice B
#E = C+B; ERREUR car on somme deux matrices avec des dimensions !=

#S = size(B); #Renvoie les dimensions de la matrice B
#G = zeros(size(B)); #Crée une matrice aux mêmes dimensions que B, remplie de 0
#H = ones(size(B));  #Crée une matrice aux mêmes dimensions que B, remplie de 1
#I = B(0,0); ERREUR car l'indexation commence à 1, pas 0 donc 0 n'existe pas
#J = B(1,1); #Renvoie l'élément ligne 1 colonne 1 de la matrice B

#th = 0.5;
#Bth = B > th; #Retourne une matrice de la même dimension que B
#Si B(i,j) > th alors Bth(i,j) = 1 sinon Bth(i,j) = 0 

#figure(2), imagesc(B); #Retourne une image de la matrice avec des couleurs
# selon les valeurs de chacun des éléments

#clear x; #Supprime la variable x du stockage de données/variables
#clear all; #Supprime toutes les variables stockées avant cette ligne de commande
#close all; #ferme toutes les fenêtres ouvertes avant cette ligne de commande


################################################################################
        #1. Visualiser une image
################################################################################

#Image = imread("baboon.bmp"); #Charge l'image
#figure(3); #Crée une fenêtre 2 dédiée à l'affichage
#imshow(Image); #Affiche l'image
#title('Image Originale'); #Titre de l'image


################################################################################
        #2. Convertir en niveaux de gris, lire la valeur des pixels 
        # et sauver une image
################################################################################

#im1 = Image_Grise et im2 = Valeur_Pixel et im3 =  ValeurS_Pixel

#Image_Grise = rgb2gray(Image);#Transforme l'image de couleur en différents gris
#figure(4);
#imshow(Image_Grise);
#title('Image transformée en niveaux de gris');

#Valeur_Pixel = Image_Grise(100,200); #Retourne la valeur de gris du pixel de 
                                     #coordonnées 100 et 200
#b = Image(100,200);
#ValeurS_Pixel = Image(100:150,200:250); #Retourne la valeur de CHAQUE pixel  
                                   #compris entre x = 100 à 150 et y = 200 à 250  

    #Pixel sombre = 0 et Pixel clair = 255  

#ValeurS_Pixel_2 = Image(300:end,200:end-3); #Retourne la valeur de CHAQUE pixel
    #end-3 implique tous sauf les 3 derniers pixels                    
    #300:end indique du 300ème pixel en abscisse jusqu'au bout de l'image 
    #(sens croissant)
                             
#Normalisation_Pixel = im2double(ValeurS_Pixel); #Normalise la valeur de pixels
#Avant une valeur était comprise entre 0 et 255, maintenant c'est entre 0 et 1
#Transforme également le type uint8 en double

#imwrite(Image, 'baboon_ng.jpg'); 
#imwrite(Image_Grise, 'baboon_ng_gris.tif');
#imwrite(Image,'baboon_ng.png'); #Enregistre l'image "Image" sous le 
                                #nom "baboon_ng" au format ".png"

                                
################################################################################
        #3. Normalisation et inverse à passer en fonction
################################################################################

##Pour effectuer certains traitements d'images, il est primordial de normaliser 
##l'image et donc de se ramener à des valeurs e[0;1] pour les pixels

##im1 = Image_Grise et im2 = Valeur_Pixel et im3 =  ValeurS_Pixel
##Ici, im1 et im2 ne sont pas normalisées (valeur(s) > 1)

##figure(5);
##imagesc(Valeur_Pixel);
##colormap(gray);
##title('Image Normalisée');

##Tentative de création de la fonction max
##
##max = 0
##for i = 1:ligne
##  for j = 1:colonne
##    if (max <= Image_Etudiee(i,j)
##      max = max
##    else
##      max = Image_Etudiee(i,j)        
##  endfor
##endfor
##
##[ligne, colonne] = size(Image_Etudiee) #Récupère la taille de l'image
##
##2ème tentative de création de la fonction max
##
##function [min, max] = MinMax(x); 
##  min = x(1,1);
##  max = x(1,1);
##  for i = 2:ligne
##    for j = 2:colonne
##      if x(i,j) < min,
##        min = x(i,j);
##      elseif x(i,j) > max,
##        max = x(i,j); 
##      endif
##    endfor
##  endfor
##endfunction

#####Création de la fonction de normalisation
##  
##function Normalisation = f_normalisation(I);
##  I = I - min(I(:));
##  I = I / (max(I(:)) - min(I(:)));
##endfunction
##
##In = f_normalisation(double(Image_Etudiee)); #Test de la fonction normalisation

#####Création de la fonction d'inversion
##
##function Inverse = f_inverse(I);
##  I = max(I(:)) - I;
##endfunction 
##
##In_Inverse = f_inverse(Image_Etudiee); #Test de la fonction inverse






%Pour calculer le max et le min d'une image (retour d'une seule valeur 
Image_Etudiee = imread('baboon_ng.jpg'); %Charge l'image
Valeur_Max = max(max(max(Image_Etudiee))); 
Valeur_Min = min(min(min(Image_Etudiee)));

%Pour un vecteur 1D : il faut un max
%Pour un vecteur 2D = une image en NG (niveau de gris), il faut 2 max
%Pour un vecteur 3D = une image en couleur, il faut 3 max

% Fonction du professeur de normalisation
function [imnorm] = f_normalisation_3D(I)

I = double(I);
M = max(max(max(I)));
m = min(min(min(I)));

imnorm = (I - m)./(M -m);

endfunction

InNorm = f_normalisation_3D(Image_Etudiee);

% Fonction d'inversion des niveaux de gris
% PROBLEME DE FUNCTION ?????
function [iminv] = f_inverse_3D(I)

I = double(I);
M = max(max(max(I)));

iminv = (M-I);

endfunction






################################################################################
        #4. Codage de l'image, normalisation et courbe gamma
################################################################################


##Lune = imread('Lune.png'); #Charge l'image
##figure(); #Crée une fenêtre 2 dédiée à l'affichage
##imshow(Lune); #Affiche l'image

#figure(), imagesc(Lune); #Retourne une image de la matrice avec des couleurs
# selon les valeurs de chacun des éléments
  
##Lune_Grise = rgb2gray(Lune);#Transforme l'image de couleur en différents gris
##figure();
##imshow(Lune);
#title('Image transformée en niveaux de gris');

#L'image est codée en uint8 soit sur 8 bits.

##Lune2 = uint16(Lune); #On code sur 16 bits au lieu de 8
##max1 = max(max(Lune));
##max2 = max(max(Lune2));
##
##LL = 5*Lune;
##LL2 = 5*Lune2;
##
##figure();
##imagesc(LL);
##
##figure();
##imagesc(LL2);

#Pourquoi y a-t-il une différence entre la multiplication du uint8 et uint16 ??

#Ln = f_normalisation(double(Lune);
#gamma = 5;
#Lgamma1 = Ln ** gamma;
#Lgamma2 = Ln ** (1/gamma);

#on prend gamma = A et on teste également gamma =  1/A pour observer les différences

#On cherche une valeur de gamma pour faire ressortir les cratères au mieux


################################################################################
        #5. Seuillage
################################################################################



## Sans boucle? 



################################################################################
        #6. Image Couleur
################################################################################

##Babouin = imread('baboon.bmp');
##Babouin_Normalise = f_normalisation(double(Babouin));
##gamma = 6;
##Babouin_Gamma1 = Babouin_Normalise ** gamma;
##Babouin_Gamma2 = Babouin_Normalise ** (1/gamma);

#Observer le rendu sur une image en couleur avec différents gammas


################################################################################
        #7. Ligne sur une image et signal
################################################################################

##Bureau = imread('bureau256.png');
##figure(); #Crée une fenêtre 2 dédiée à l'affichage
##imshow(Bureau); #Affiche l'image
##
##Ic = Bureau;
##Ic(:,:,2) = Bureau;
##Ic(:,:,3) = Bureau;



################################################################################
        #8. Comprendre un code
################################################################################

##I = double(rgb2gray(imread('lune.png'))); #on charge l'image, on la convertir en
###niveaux de gris et on double la précision : uint8 ==> double
##I = I(1:end-5, :); 
##I = f_normalisation(I);
## 
##I2 = I.^(2); #ici gamma = 2
##
##[L C z]=size(I);
##
##Z1 = [I ones(L, 20) f_inverse(I)];
##Z2 = [I2 ones(L, 20) f_normalisation(I - I2)];
##
##[L C z]=size(Z1); Z = [Z1 ; ones(20, C) ; Z2];
##
##figure, imshow(uint8(Z*255)), colormap(gray), title('Comprendre ce code')


################################################################################
        #9. Rehaussement de contraste utilisant un filtre linéaire
################################################################################

##L1 = [0 -1 0 ; -1 4 -1 ; 0 -1 0]; #matrice du masque Laplacien
##L2 = [-1 -1 -1 ; -1 8 -1 ; -1 -1 -1];
##imLaplacien = conv2(double(im1), double(L1),'same'); #Convolution d'une image
###im1 NG avec L1
##figure;
##imagesc(f_normalisation(imLaplacien));
##colormap(gray),title('image convoluee avec Laplacien');
##
##imrehauss = im1 - a * imLaplacien; #Rehausser les contours de im1 en faisant
###avec un petit coefficient 0 < a < 1 
##
###On peut prendre a = ??????

################################################################################
        #10. Rehaussement de contraste utilisant un filtre non linéaire
################################################################################








