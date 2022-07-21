clear all;
close all;
pkg load image; 

J = imread('bureau256.png');
figure();
imshow(J);
a = double(J);
figure();
imshow(a);
S = J(40:80,120:160); %Sous image de J
S2 = J(1:41,1:41); %Sous image de J

figure, surf(double(S)); shading interp; 
figure, surf(double(S2)); shading interp; 

%Afficher la ligne 95 de J sout forme de courbe

figure; plot(J(95,:)); title('Ligne 95 de J');

%On crée une image en couleur
Jc(:,:,1) = J; %On récupère le filtre rouge
Jc(:,:,2) = J; %On récupère le filtre vert
Jc(:,:,3) = J; %On récupère le filtre bleu

%On ne veut que du rouge à la ligne 95
Jc(95,:,1) = 255;
Jc(95,:,2) = Jc(95,:,3) = 0;

figure; imshow(Jc); title('J avec ligne rouge'); 