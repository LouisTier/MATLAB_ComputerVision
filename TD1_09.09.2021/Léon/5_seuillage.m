L = imread("lune.png");
L = rgb2gray(L);
#On normalise L
Ln = f_normalisation(double(L));

#méthode vectorielle pour garder pixels > 0.5
Ln2 = fix(Ln./0.5) .* Ln;

figure, imagesc(Ln), colormap(gray);title('Ln');
figure, imagesc(Ln2), colormap(gray);title('Ln2');
