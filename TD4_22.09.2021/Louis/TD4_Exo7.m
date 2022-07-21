clear all;
close all;

I = imread('pieces.png');
I2 = I;
figure();
imshow(I);

B = strel('square',5); %élément de structure : masque binaire
%On peut choisir différentes formes : ’diamond’, ’square’, ’line’ et modifier 
%sa taille

IRouge = I(:,:,1);
IVert = I(:,:,2);
IBleu = I(:,:,3);

figure()
subplot(1,3,1); imshow(IRouge); title('Plan rouge');
subplot(1,3,2); imshow(IVert); title('Plan vert');
subplot(1,3,3); imshow(IBleu); title('Plan bleu');

%On choisit le plan rouge car on distingue mieux les pièces
IPlanChoisi_double = double(IRouge);

seuil = 200;
Iseuil = (IPlanChoisi_double > seuil);
figure();
imshow(Iseuil);

Iseuil_dilate = imdilate(Iseuil, B); %Permet de dilater une image I avec le masque B
%ou sinon imfill(I)

figure();
imshow(Iseuil_dilate);

Test1 = bwmorph(Iseuil_dilate, 'skel', Inf);
Test2 = bwmorph(Iseuil_dilate, 'skel', 10);

figure();
subplot(1,2,1); imshow(Test1);
subplot(1,2,2); imshow(Test2);
