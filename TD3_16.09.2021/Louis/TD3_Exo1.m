clear all;
close all;

im = imread('baboon_ng.jpg'); %On charge l'image
s = size(im); %On récupère les dimensions de im 
%imgf = uint8(zeros(s)); %Image résultat

im_R = im(:,:,1); %Composante rouge de l'image originale
im_G = im(:,:,2); %Composante verte de l'image originale
im_B = im(:,:,3); %Composante bleue de l'image originale

figure();
imshow(im);

figure();
subplot(1,3,1); imshow(im_R); title('Image Rouge');
subplot(1,3,2); imshow(im_G); title('Image Verte');
subplot(1,3,3); imshow(im_B); title('Image Bleue');

seuil_manuel_rouge = 150; %Valeur déterminée à la "main", par "essai"
seuil_manuel_bleu = 80;
seuil_manuel_vert = 80;

%Filtrage Rouge
for i = 1:s(1) %On parcourt les lignes
    for j = 1:s(2) %On parcourt les colonnes
      if (im_R(i,j) > seuil_manuel_rouge) && (im_G(i,j) < seuil_manuel_vert) && (im_B(i,j) < seuil_manuel_bleu)
        im_R(i,j) = im_R(i,j);
        im_G(i,j) = im_G(i,j);
        im_B(i,j) = im_B(i,j);
       else 
        im_R(i,j) = 0;
        im_G(i,j) = 0;
        im_B(i,j) = 0;
      end
    end
end

figure();
subplot(1,3,1); imshow(im_R); title('Image Rouge a');
subplot(1,3,2); imshow(im_G); title('Image Verte a');
subplot(1,3,3); imshow(im_B); title('Image Bleue a');

imgf(:,:,1) = im_R; %On ré-attribue la couleur rouge à l'image résultat
imgf(:,:,2) = im_G; %On ré-attribue la couleur verte à l'image résultat
imgf(:,:,3) = im_B; %On ré-attribue la couleur bleue à l'image résultat

figure();
imshow(imgf);

##seuil_manuel_rouge2 = 180; %Valeur déterminée à la "main", par "essai"
##seuil_manuel_bleu2 = 80;
##seuil_manuel_vert2 = 180;

##%Filtrage Bleu
##for i = 1:s(1) %On parcourt les lignes
##    for j = 1:s(2) %On parcourt les colonnes
##      if (im_R(i,j) < seuil_manuel_rouge2) && (im_G(i,j) <seuil_manuel_vert2) && (im_B(i,j) > seuil_manuel_bleu2)
##        im_R(i,j) = im_R(i,j);
##        im_G(i,j) = im_G(i,j);
##        im_B(i,j) = im_B(i,j);
##       else 
##        im_R(i,j) = 0;
##        im_G(i,j) = 0;
##        im_B(i,j) = 0;
##      end
##    end
##end
##
##imgf2(:,:,1) = im_R; %On ré-attribue la couleur rouge à l'image résultat
##imgf2(:,:,2) = im_G; %On ré-attribue la couleur verte à l'image résultat
##imgf2(:,:,3) = im_B; %On ré-attribue la couleur bleue à l'image résultat
##
##figure();
##imshow(imgf2);

##%Echange de couleur du rouge avec le bleu 
##seuil_manuel_rouge3 = 1; %Valeur déterminée à la "main", par "essai"
##seuil_manuel_bleu3 = 1;
##seuil_manuel_vert3 = 1;
##
##for i = 1:s(1) %On parcourt les lignes
##    for j = 1:s(2) %On parcourt les colonnes
##      if (im_B(i,j) > seuil_manuel_bleu3) && (im_B(i,j) > seuil_manuel_rouge3) && (im_B(i,j) > seuil_manuel_vert3)
##        a = im_R(i,j); %On crée une mémoire, une sauvegarde de la couleur rouge 
##        im_R(i,j) = im_B(i,j); %On procède à l'échange : rouge devient bleu;
##        im_B(i,j) = a; %On procède à l'autre échange : bleu devient rouge (sauvegarde non modifiée)
##       else 
##        im_R(i,j) = im_R(i,j);
##        im_G(i,j) = im_G(i,j);
##        im_B(i,j) = im_B(i,j);
##      end
##    end
##end
##
##imgf3(:,:,1) = im_R; %On ré-attribue la couleur rouge à l'image résultat
##imgf3(:,:,2) = im_G; %On ré-attribue la couleur verte à l'image résultat
##imgf3(:,:,3) = im_B; %On ré-attribue la couleur bleue à l'image résultat
##
##figure();
##imshow(imgf3);
