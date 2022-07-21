clear all;
close all;

I = imread('bureau256.png');
B = strel("square",3); %élément de structure : masque binaire
%On peut choisir différentes formes : ’diamond’, ’square’, ’line’ et modifier 
%sa taille

% On peut également fabriquer son masque soi-même, par exemple le disque 5x5
C = [0 0 1 0 0 ; 0 1 1 1 0 ; 1 1 1 1 1 ; 0 1 1 1 0 ; 0 0 1 0 0];

figure();
imshow(B);

figure();
imshow(C);