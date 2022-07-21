clear all;
close all;
pkg load image; 

J = imread('bureau256.png');

Mx = [-1 0 1; -1 0 1; -1 0 1]; %Masque en x
My = [1 1 1; 0 0 0; -1 -1 -1]; %Masque en y

%Calcul des d�riv�es d'image
Jx = filter2(Mx,J)/6;
Jy = filter2(My,J)/6;

S = size(Jx);
for i = 1:S(1)
  for j = 2:S(2)
    G(i,j) = sqrt((Jx(i,j)*Jx(i,j)) + (Jy(i,j)*Jy(i,j)));
  endfor
endfor

Gnormalise = f_normalisation(G);
%Gclair = f_inverse(Gnormalise); %Permet d'inverse le niveau de gris : Max - J

th = 0.3;
Gth_normalise= (Gnormalise > th); %th = treshold = seuil
%Tout ce qui est sup�rieur au seuil devient blanc
figure();
imshow(Gnormalise);
figure();
imagesc(Gnormalise);
%!!!!! ATTENTION : pour afficher une image normaliser : utiliser imagesc !!!!!!
figure();
subplot(1,2,1); colormap('Gray'); imagesc(G); title('G');
subplot(1,2,2); colormap('Gray'); imagesc(Gth_normalise); title('G seuill�e');

%Deux lignes pour �viter les boucles
Gc1 = J.*(1-Gth_normalise); %On met � 0 les pixels normalis�s dans i'image orginale
Gc = Gc1 + 255*Gth_normalise; %On rajoute le blanc sur les pixels pr�c�dents � 0
%255 car on se ram�ne � du uint8 et pas du logical

figure(); imshow(Gc1); title('Blanc des contours sur image originale');
figure(); imshow(Gc); title('Blanc des contours sur image originale');


% Maintenant on cr�e une image en couleur o� on veut des contours verts

Jc(:,:,1) = J;
Jc(:,:,2) = J;
Jc(:,:,3) = J;

f = size(J);
for i = 1:f(1)
  for j = 1:f(2)
    if Gth_normalise(i,j) == 1
      Jc(i,j,1) = 0;
      Jc(i,j,2) = 255;
      Jc(i,j,3) = 0;
     else
      Jc(i,j,1) = J(i,j);
      Jc(i,j,2) = J(i,j);
      Jc(i,j,3) = J(i,j);
    endif
  endfor
endfor
figure(); imshow(Jc); title('Contours verts');