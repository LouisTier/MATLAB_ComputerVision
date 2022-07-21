clear all;
close all;
pkg load image; 

I=imread('Lena.png');
I2=imread('Lena_comp.jpg');
I3=imread('sierpinski.png');

Entropie_I = f_entropie(I);
Entropie_I2 = f_entropie(I2);
Entropie_I3 = f_entropie(I3);