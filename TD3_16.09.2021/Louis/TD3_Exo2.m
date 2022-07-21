clear all;
close all;

%Image en couleur = 3 dimensions
%Image en NG = 2 dimensions

I = imread('Lune.png'); %On charge l'image
I_gris = rgb2gray(I); %Convertit une image colorée en une image NG
figure();
imshow(I);

Ic = imread('baboon_ng.jpg');

Max_Image = max(max(max(I_gris)));
Min_Image = min(min(min(I_gris)));

function [ImNorm] = f_normal(I)
  I = double(I);
  
  Max_Image = max(max(max(I)));
  Min_Image = min(min(min(I)));
  
  num = (I - Min_Image);
  den = (Max_Image - Min_Image);
  
  ImNorm = num ./ den;
end

I_Norm = f_normal(I_gris);

function [ImInv] = f_inv(I)

  Max_Image = max(max(max(I)));
  ImInv = Max_Image - I;
end
I_Inv_I = f_inv(I_gris);
I_Inv_IC = f_inv(Ic);

figure();
imshow(I_Inv_I);

figure();
imshow(I_Inv_IC);