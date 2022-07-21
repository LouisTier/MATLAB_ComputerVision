clear all;
close all;

I = imread('bureau256.png');
figure();
imshow(I);

%erosion noircit et dilatation blanchit

B = strel('square',10); %élément de structure : masque binaire
%On peut choisir différentes formes : ’diamond’, ’square’, ’line’ et modifier 
%sa taille


IM2 = imdilate(I, B); %Permet de dilater une image I avec le masque B
figure();
imagesc(IM2);
colormap(gray), title('Image dilatee');


IM3 = imerode(I, B); %Permet d'éroder une image I avec le masque B
figure();
imagesc(IM3);
colormap(gray), title('Image erodee');

figure();
subplot(1,3,1); imshow(I); colormap(gray), title('Image originale');
subplot(1,3,2); imshow(IM2); colormap(gray), title('Image dilatee');
subplot(1,3,3); imshow(IM3); colormap(gray), title('Image erodee');

%Les barreaux sont blanc il faut donc eroder !