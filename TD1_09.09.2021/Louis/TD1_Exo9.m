L1 = [0 -1 0 ; -1 4 -1 ; 0 -1 0]; %matrice du masque Laplacien
L2 = [-1 -1 -1 ; -1 8 -1 ; -1 -1 -1];

im = imread("baboon.bmp");
im1=rgb2gray(im);

function [imnorm] = f_normalisation_3D(I)

I = double(I);
M = max(max(max(I)));
m = min(min(min(I)));

imnorm = (I - m)./(M -m);

endfunction

%Convolution d'une image im1 niveau de gris avec L1
imLaplacien = conv2(double(im1), double(L1),'same'); 

figure();
imagesc(f_normalisation_3D(imLaplacien));
colormap(gray),title('image convoluee avec Laplacien');

a = 0.9

%Rehausser les contours de im1 en faisant avec un petit coefficient 0 < a < 1
imrehauss = im1 - a * imLaplacien; 
 
figure();
imagesc(imrehauss);
colormap(gray),title('image rehaussée');
