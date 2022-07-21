clear all;
close all;

%imshow il faut du 8 bitand
%imagesc il faut n importe quoi

I = imread('peppers.png');
S = size(I);
figure();
imshow(I);

% HSV (Hue = H = teinte, S = Saturation, V = Valeur/luminance)
R = I(:,:,1);
G = I(:,:,2);
B = I(:,:,3);

L = (R+G+B)./3; 
% La luminance L caract�rise l'intensit� totale d'un point lumineux color�

S = 1 - ( 3 * (min(min(R, G), B)) ./ L);
% La saturation S varie entre 0 et 1. Plus la couleur est pure, plus la
% saturation est �lev�e et inversement, plus la saturation est faible, 
% plus la couleur est d�lav�e (0 = gris, 1 = couleur pure)

H = acos(((R-G) + (R-B))./ (2*sqrt(((R-G).^2)+(R-B).*(G-B))));

##for i = 1:S(1)
##  for j = 1:S(2)
##    if B(i,j) > G(i,j)
##      H(i,j) = pi - H(i,j);
##    endif
##  endfor
##endfor

HSV(:,:, 1) = L; 
HSV(:,:, 2) = S; 
HSV(:,:, 3) = H ./pi;

figure();
imshow(HSV);