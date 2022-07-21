
pkg load image

lena = imread("images/lena.png");
disp("Shanonn entropy of Lena: "), disp(entropy(lena))

sierpinski = uint8(imread("images/sierpinski.png"));
disp("Shanonn entropy of Sierpinski: "), disp(entropy(sierpinski))