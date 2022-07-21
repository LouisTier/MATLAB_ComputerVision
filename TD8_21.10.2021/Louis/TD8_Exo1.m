clear all;
close all;
pkg load image; 

J = imread('cameraman.tif');
Jrot = imrotate(J,180);

figure();
imshow(J);

figure();
imshow(Jrot);

Inoir = zeros(1600,900); %On cr�e une image noire
Inoir(700:900, 350:550) = ones; %On cr�e une image blanche dans l'image noire

figure();
imshow(Inoir)

Inoir_rot1 = imrotate(Inoir,45);
Inoir_rot2 = imrotate(Inoir,90);
Inoir_rot3 = imrotate(Inoir,180);

figure();
subplot(2,2,1); imshow(Inoir); title('Image rotationn�e de 0�')
subplot(2,2,2); imshow(Inoir_rot1); title('Image rotationn�e de 45�')
subplot(2,2,3); imshow(Inoir_rot2); title('Image rotationn�e de 90�')
subplot(2,2,4); imshow(Inoir_rot3); title('Image rotationn�e de 180�')