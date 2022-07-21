# Mise en jambe

pkg load image

lena = imread("images/lena.png");
lena_comp = imread("images/lena.jpg");
sierpinski = uint8(imread("images/sierpinski.png"));


figure('name', 'Lena')
imshow(lena)

figure('name', 'Lena compresse')
imshow(lena_comp)

figure('name', 'sierpinski')
imshow(sierpinski)

figure('name', 'Histogramme Lena')
imhist(lena)

figure('name', 'Histogramme Lena compresse')
imhist(lena_comp)

figure('name', 'Histogramme Sierpinski')
imhist(sierpinski)