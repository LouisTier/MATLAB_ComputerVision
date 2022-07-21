clear all;
close all;
pkg load image; 

I=imread('Lena.png');
I2=imread('Lena_comp.jpg');
I3=imread('sierpinski.png');

figure();
subplot(1,3,1); imhist(I); title('Lena')
subplot(1,3,2); imhist(I2); title('Lena compressée')
subplot(1,3,3); imhist(uint8(I3)); title('Sierpinski')


% Sur l histogramme compressé, l'occurrence de certaines valeurs compressées
% a augmenté
