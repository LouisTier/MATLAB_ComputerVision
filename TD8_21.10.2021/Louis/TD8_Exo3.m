clear all;
close all;
pkg load image; 

I1 = imread('forme1.png');
I2 = imread('forme2.png');

%On crée une image binaire en seuillant
th = 1;
I1_seuil = (I1 > th); %si > à th alors on met 1 (blanc)
I2_seuil = (I2 > th);

figure();
subplot(2,2,1); imshow(I1); title('Image 1')
subplot(2,2,2); imshow(I2); title('Image 2')
subplot(2,2,3); imshow(I1_seuil); title('Image 1 binaire')
subplot(2,2,4); imshow(I2_seuil); title('Image 2 binaire')