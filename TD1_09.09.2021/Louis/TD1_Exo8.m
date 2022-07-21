clear all;
close all;

I = double(rgb2gray(imread('Lune.png'))); 
%on charge l'image, on la convertir en
%niveaux de gris et on double la précision : uint8 ==> double

I = I(1:end-5, :); %On ne considère pas les 5 derniers pixels de 

%Retourne la valeur de CHAQUE pixel
%end-5 implique tous sauf les 5 derniers pixels                    
%1:end indique du 1er pixel en abscisse jusqu'au bout de l'image (sens croissant)

% Fonction de normalisation
function [imnorm] = f_normalisation_3D(I)

I = double(I);
M = max(max(max(I)));
m = min(min(min(I)));

imnorm = (I - m)./(M -m);

endfunction
I = f_normalisation_3D(I);

% Fonction d'inversion des NG
function [iminv] = f_inverse_3D(I)

I = double(I);
M = max(max(max(I)));

iminv = (M-I);

endfunction
 
I2 = I.^(2); #ici gamma = 2 gamma>0 donc assombrit les zones sombres 

[L C z]=size(I);

Z1 = [I ones(L, 20) f_inverse_3D(I)];
Z2 = [I2 ones(L, 20) f_normalisation_3D(I - I2)];

[L C z]=size(Z1); 
Z = [Z1 ; ones(20, C) ; Z2];

figure, imshow(uint8(Z*255)), colormap(gray), title('Comprendre ce code');



