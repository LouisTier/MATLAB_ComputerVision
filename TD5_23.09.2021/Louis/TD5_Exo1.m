clear all;
close all;
pkg load image; 

I = double(imread('source14_1.tif'));
J = double(imread('source14_2.tif'));


I_variance = f_variance(I)./9;
J_variance = f_variance(J)./9;

figure();
subplot(2,2,1); imshow(I,[]); title('I');
subplot(2,2,2); imshow(J,[]); title('J');
subplot(2,2,3); imshow(I_variance,[]); title('Variance de I');
subplot(2,2,4); imshow(J_variance,[]); title('Variance de J');

s = size(I_variance);

I_Nette = zeros(s);

for i = 1:s(1)
  for j = 1:s(2)
    if I_variance(i,j) >= J_variance(i,j) %indique si c'est flou où nonzeros
      I_Nette(i,j) = I(i,j); 
     elseif J_variance(i,j) > I_variance(i,j)
      I_Nette(i,j) = J(i,j); 
    endif
  endfor
endfor
figure();
imshow(I_Nette,[]); title('Image après élévation de la variance : Image Nette');

%W = strel('square',3);
%élément de structure : masque binaire
%On peut choisir différentes formes : ’diamond’, ’square’, ’line’ et modifier 
%sa taille



 %imshow pour afficher on doit avoir une image en 8bits, sinon on normalise 
 %Normalisation : imshow(I,[]);
 %Pour faire des calculs, il faut être en double !!!

 