clear all
close all

img = (imread( 'peppers.png'));
% img = (imread( 'baboon.png'));
% img = (imread( 'peppers_compress.jpg'));

% img = (imread( 'barba.bmp'));

figure, imshow(img)

imghsv(100:200,300:400,1)=0.7;

R = img(:,:,1);
G = img(:,:,2);
B = img(:,:,3);

R = double(R); G = double(G); B = double( B);
MR = max(max(R)); MG = max(max(G)); MB = max(max(B));
M = max( MR, max(MG, MB));

R = R/M; G = G/M; B = B/M;

%%%%%%%% YUV
Y = 0.3 * R + 0.59 * G + 0.11 * B;
U = 0.49 * (B - Y);
V = 0.88 * (R - Y);

figure, imagesc(Y), colormap(gray), title('Y')
figure, imagesc(U), colormap(gray), title('U')
figure, imagesc(V), colormap(gray), title('V')

YUV(:,:,1) = Y; YUV(:,:,2) = U;YUV(:,:,3) = V;

imwrite(Y, 'YUV/Y.png')
imwrite(U, 'YUV/U.png')
imwrite(V, 'YUV/V.png')
imwrite(uint8(YUV*255), 'YUV/YUV.png')

figure, imshow(YUV), title('YUV 1')

Cg = Y -U - V;
figure, imagesc(Cg), colormap(gray), title('Cg')

L = 0.86*Y + 0.07;
Cr = 0.88*V + 0.5;
Cb = 0.88*U + 0.5;


YUV(:,:,1) = Y;
YUV(:,:,2) = Cr;
YUV(:,:,3) = Cb;



Ig = rgb2gray(img);
figure, imagesc(Ig), colormap(gray), title('image ng')