%Penser à faire "pkg load image" avant chaque TD
clear all;
close all;

%On charge une image en niveau de gris
Lune = imread('Lune.png'); 

%On affiche son histogramme
figure();
imhist(Lune);