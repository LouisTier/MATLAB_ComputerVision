Babouin = imread('baboon.bmp'); %Charge l'image 

% Fonction du professeur de normalisation
function [imnorm] = f_normalisation_3D(I)

I = double(I);
M = max(max(max(I)));
m = min(min(min(I)));

imnorm = (I - m)./(M -m);

endfunction

Babouin_Normalise = f_normalisation_3D(Babouin);

gamma = 6;

Babouin_Gamma1 = Babouin_Normalise .^ gamma;
Babouin_Gamma2 = Babouin_Normalise .^ (1/gamma);

figure(), imagesc(Babouin_Gamma1);
figure(), imagesc(Babouin_Gamma2);