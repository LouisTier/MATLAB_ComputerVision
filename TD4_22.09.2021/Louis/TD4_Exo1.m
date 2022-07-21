clear all;
close all;

I = imread('bureau256.png');
B = strel("square",3); %�l�ment de structure : masque binaire
%On peut choisir diff�rentes formes : �diamond�, �square�, �line� et modifier 
%sa taille

% On peut �galement fabriquer son masque soi-m�me, par exemple le disque 5x5
C = [0 0 1 0 0 ; 0 1 1 1 0 ; 1 1 1 1 1 ; 0 1 1 1 0 ; 0 0 1 0 0];

figure();
imshow(B);

figure();
imshow(C);