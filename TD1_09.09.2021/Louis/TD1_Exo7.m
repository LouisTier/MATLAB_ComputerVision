% Pour une image I en NG (niveau de gris) 
%I(x,y) ==> affiche la valeur du pixel en ligne x et colonne y
%I(:, y) ==> affiche la colonne en y


%Ic = I; Ic(:,:,2) = I; Ic(:,:,3) = I;
%==> on créée une image en couleur à partir de 3 plans indentiques

%Pour afficher une ligne en vert sur cette image, on va mettre à 0 les lignes
%du bleu et du rouge, puis à 255 la ligne verte :

%Ic(L, :, 1) = 0  % Ic (ligne L, toutes les colonnes, canal 1)
%Ic(L, :, 2) = 0
%Ic(L, :, 3) = 255
%avec L mon numéro de ligne

% Plus rapidement :

%Ic(L, :, 1:2) = 0  % Ic (ligne L, toutes les colonnes, canal 1 et 2)
%Ic(L, :, 3) = 255