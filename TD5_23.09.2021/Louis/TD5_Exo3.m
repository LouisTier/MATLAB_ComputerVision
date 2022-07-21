clear all;
close all;
pkg load image; 

I = double(imread('D18.gif'));
J = double(imread('D31.gif'));
K = double(imread('D56.gif'));

I_ecart = f_ecart_type(I);
J_ecart = f_ecart_type(J);
K_ecart = f_ecart_type(K);

MoyenneI = mean2(I);
MoyenneJ = mean2(J);
MoyenneK = mean2(K);