close all;
L = imread("Lune.png");
L = rgb2gray(L);
L2 = uint16(L);

figure, imagesc(L), colormap(gray);title('L');


LL = 5*L;
#figure, imagesc(LL), colormap(gray);title('LL');

LL2 = 500*L2;
#figure, imagesc(LL2), colormap(gray);title('LL2');

#On normalise L
Ln = f_normalisation(double(L));

gamma = 2;
Lgamma = Ln .^ gamma; # assombrit surtout les zones sombres
figure, imagesc(Lgamma), colormap(gray);title('Lgamma');

L2gamma = Ln .^ (1./gamma);  # éclaircit surtout les zones sombres
figure, imagesc(L2gamma), colormap(gray);title('L2gamma');