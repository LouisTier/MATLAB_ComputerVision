clear all;
close all;

I = imread('bureau256.png');
I2 = I;
figure();
imshow(I);

B = strel('square',5); %élément de structure : masque binaire
%On peut choisir différentes formes : ’diamond’, ’square’, ’line’ et modifier 
%sa taille

%delta = dilatation
%epsilon = erosion

IM2 = imdilate(I, B); %Permet de dilater une image I avec le masque B
IM3 = imerode(I, B); %Permet d'éroder une image I avec le masque B
%erosion noircit et dilatation blanchit

s = size(I);

for i = 1:s(1)
  for j = 1:s(2)
    if (IM2(i,j) - I(i,j)) < (I(i,j) - IM3(i,j))
      I(i,j) = IM2(i,j);
    else 
      I(i,j) = IM3(i,j);
    endif
  endfor
end
figure();
imshow(I);title('Image réhaussée méthode 1');

alpha = 0.5;
beta = 1-alpha;

for i = 1:s(1)
  for j = 1:s(2)
    if (I(i,j) >= IM3(i,j)) && (I(i,j) <= IM3(i,j) + alpha.*(IM2(i,j)-IM3(i,j)))
      I2(i,j) = IM3(i,j); %erosion
    elseif (I(i,j) <= IM3(i,j) + alpha.*(IM2(i,j)-IM3(i,j))) && (I(i,j)> IM2(i,j) - beta.*(IM2(i,j)-IM3(i,j)))
      I2(i,j) = I(i,j); %originale
    elseif (I(i,j) <= IM3(i,j)) && (I(i,j)> IM2(i,j) - beta.*(IM2(i,j)-IM3(i,j)))
      I2(i,j) = IM2(i,j); %dilatation
    endif
  endfor
endfor
figure();
imshow(I2);title('Image réhaussée méthode 2');
