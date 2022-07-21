close all
clear all
pkg load image

im = imread('baboon_ng.jpg');

%im = imread("lune.png");
figure, imshow(im);
im1=rgb2gray(im);

iminv = max(max(im1)) - im1;
figure, imagesc(iminv), colormap(gray);title('image inverse');

%break

clear all


im = imread('baboon.bmp');
figure, imshow(im);

figure, image(im);



% a) isoler le rouge

s=size(im);
seuil=200;
seuil2 = 128;
imgf = uint8(zeros(s));
for i=1:s(1)
    for j=1:s(2)
        if im(i,j,1)>seuil
          if (im(i,j,2)<seuil2) && (im(i,j,3)<seuil2)
              imgf(i,j,:)=im(i,j,:);
          end
        end
    end
end

figure, image(imgf);
imwrite(imgf,'baboon_rouge.png');



% b) isoler le bleu

s=size(im);
seuil=128;
seuil2 = 240;
imgf = uint8(zeros(s));
for i=1:s(1)
    for j=1:s(2)
        if im(i,j,3)>seuil
          if (im(i,j,1)<seuil2) & (im(i,j,2)<seuil2) & (im(i,j,1)<im(i,j,3)) & (im(i,j,2)<im(i,j,3))
              imgf(i,j,:)=im(i,j,:);
          end
        end
    end
end

figure, image(imgf);

imwrite(imgf,'baboon_bleu.png');



% c) remplacer le bleu par du rouge

img = im;
s=size(im);
seuil=128;
seuil2 = 220;
imgf = uint8(zeros(s));
for i=1:s(1)
    for j=1:s(2)
        if im(i,j,3)>seuil
%          if (im(i,j,1)<seuil2) & (im(i,j,2)<seuil2) & (im(i,j,1)<im(i,j,3)) & (im(i,j,2)<im(i,j,3))
          if (im(i,j,1)<im(i,j,3)) & (im(i,j,2)<im(i,j,3))
              img(i,j,3)=im(i,j,1);
              img(i,j,1)=im(i,j,3);
          end
        end
    end
end

figure, image(img), title('bleu remplace par le rouge');

imwrite(img, 'rouge_remplace_bleu.png')

% d) remplacer le bleu et rouge par du vert

img = im;
s=size(im);
seuil=128;
seuil2 = 220;
imgf = uint8(zeros(s));
for i=1:s(1)
    for j=1:s(2)
        if (im(i,j,3)>seuil) & (im(i,j,3)>im(i,j,1)) & (im(i,j,3)>im(i,j,2))
                cc = img(i,j,3);
                img(i,j,3)=im(i,j,2);
                img(i,j,2)=cc;
        end

          if (im(i,j,1)>seuil) & (im(i,j,3)<im(i,j,1)) & (im(i,j,2)<im(i,j,1))
                    cc = img(i,j,1);
                    img(i,j,1)=im(i,j,2);
                    img(i,j,2)=cc;
          end
          
        
    end
end

figure, image(img), title('rouge et bleu remplace par le vert');
imwrite(img, 'vert_remplace_bleu_et_rouge.png')
