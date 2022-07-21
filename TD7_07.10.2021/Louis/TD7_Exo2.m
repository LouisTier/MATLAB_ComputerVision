clear all;
close all;
pkg load image; 

J = imread('bureau256.png');

Mx = [-1 0 1; -1 0 1; -1 0 1]; %Masque en x
My = [1 1 1; 0 0 0; -1 -1 -1]; %Masque en y

%Calcul des dérivées d'image
Jx = filter2(Mx,J)/6;
Jy = filter2(My,J)/6;

% Il faut diviser le résultat par 6 ou par 3 pour "normaliser" la dérivée

figure(1);imagesc(Jx),colormap(gray), title('Image derivee en X');
figure(2);imagesc(Jy),colormap(gray), title('Image derivee en Y');

%Les contours horizontaux sur Jx sont moins visibles
%Les contours horizontaux sur Jy sont plus visibles


%Afficher la ligne 95 de Jx sout forme de courbe
figure; plot(Jx(95,:)); title('Ligne 95 de Jx'); 

%Afficher la ligne 95 en couleur sur Jx
Jxc(:,:,1) = Jx;
Jxc(:,:,2) = Jx;
Jxc(:,:,3) = Jx;

Jxc(95,:,1) = Jxc(95,:,2) = 0;
Jxc(95,:,3) = 255;

figure; imshow(uint8(Jxc)); title('Ligne couleur sur Jxc');

%Les valeurs positives correspondent du passage du noir au blanc
%Les valeurs négatives corresponden du passage du blanc au noir
%Les valeurs à 0 correspondent à une uniformité de la couleur sur la longueur

%Le filtre fait droit - gauche ([-1 0 1]) det blanc = grand (255) 
%et noir = petit (0), d'où le passage en négatif