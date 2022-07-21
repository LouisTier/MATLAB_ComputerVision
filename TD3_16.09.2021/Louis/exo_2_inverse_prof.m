clear all
close all

im = imread("baboon.bmp");
figure, imshow(im);

figure, image(im);

Rm = im(:,:,1);
Gm = im(:,:,2);
Bm = im(:,:,3);

Rminv = 255 - Rm;
Gminv = 255 - Gm;
Bminv = 255 - Bm;

%creation image couleur

Inv(:,:,1) = Rminv;
Inv(:,:,2) = Gminv;
Inv(:,:,3) = Bminv;

figure,
subplot(1,2,1);image(im);title('Image originale');
subplot(1,2,2);image(Inv);title('Image inverse');