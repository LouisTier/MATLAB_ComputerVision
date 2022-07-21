clear all;
close all;
pkg load image; 

J = imread('bureau256.png');

Mx = [-1 0 1; -1 0 1; -1 0 1]; %Masque en x
My = [1 1 1; 0 0 0; -1 -1 -1]; %Masque en y

%Calcul des dérivées d'image
Jx = filter2(Mx,J)/6;
Jy = filter2(My,J)/6;


eta = atan(Jy./Jx);
figure, imagesc(eta),colormap(gray), title('Gradient direction');

S = J(40:80,120:160); %Sous image de J de taille (40x40)
Sx = filter2(Mx,S)/6;
Sy = filter2(My,S)/6;

%S2 = J(1:41,1:41); %Sous image de J

figure, clf ; imagesc(S) ; colormap(gray) ; axis image; hold on;
uiver(-Sx, Sy);
quiver(Sy, -Sx,'r');
