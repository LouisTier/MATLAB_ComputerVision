clear all;
close all;

I = imread('Paolina.png'); %On charge l'image
H = f_histo(I) %On calcule l'histogramme 

%On cherche à calculer l'histogramme cumulatif

somme = 0 %On initialise la somme pour le cumulatif


