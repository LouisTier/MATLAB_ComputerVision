function [im_histo] = f_histo(I)

%I = double(I); Pas besoin, il faut une image en 8 bits 

im_histo = imhist(I);

