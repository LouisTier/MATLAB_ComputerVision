%Fonction pour construire l'histogramme d'une image cod�e sur 8 bits
clear all;
close all;

%On charge l'image du bureau
I = imread('bureau256.png'); 

Histogramme = f_histo_prof(I);
%Lorsqu'une fonction a �t� cr��e, il n'y a pas besoin de la re-�crire
%Il faut juste l'appeler avec son nom et qu'elle soit rang�e dans le m�me fichier

figure();
bar(Histogramme); %Affiche en diagramme "bar" les valeurs de l'histogramme de I
xlim([1 256]); %Dimensionne la fen�tre d'affichage en abscisses
ylim([0 max(Histogramme)]); %Dimensionne la fen�tre d'affichage en ordonn�es

title(' histo image originale NG'); %Titre Global
xlabel('niveaux de gris ','FontSize',12); %Titre axe abscisses
ylabel('nombre de pixels','FontSize',12); %Titre axe ordonn�es
