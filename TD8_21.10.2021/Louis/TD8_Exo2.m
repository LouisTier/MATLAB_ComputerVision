clear all;
close all;
pkg load image; 

I = imread('bureau256.png');

x1 = 10 % point 1
y1 = 40
x2 = 50 % point 2
y2 = 150

figure, imagesc(I), colormap(gray), title('image originale')
hold on % permet de bloquer la figure

plot(x1,y1,'go') % affiche point 1
plot(x2,y2,'r*') % affiche point 2
plot([x1 x2], [y1 y2], 'linewidth', 4) % affiche le segment

%Si y2 = 500, le point 2 est en dehors de l'image mais le segment se trace quand 
%même, comme s'il y avait un prolongement de l'image pour les coordonnées.