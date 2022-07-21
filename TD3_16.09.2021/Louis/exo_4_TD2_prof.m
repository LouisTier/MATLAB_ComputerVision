clear all
% close all

% img = (imread( 'peppers.png'));
img = (imread( 'baboon.png'));
% img = (imread( 'peppers_compress.jpg'));

% img = (imread( 'barba.bmp'));

figure, imshow(img)

R = img(:,:,1);
G = img(:,:,2);
B = img(:,:,3);

R = double(R); G = double(G); B = double( B);

%%%%%%%%%% %%% HSV

L =  (R + G + B)/3;
S = 1 - 3 .* min(R,min(G,B))./L;
%%%%%%%%%%

TT = (R-G)  + (R-B);
UU = ((R-G).^2 + (R-B).*(G-B));
H = acos( TT ./ (2*sqrt(UU)) );
 
HB = (B>G);
figure, imagesc(HB), colormap(gray),title('HB');

H1 = (pi - H) .* HB;
HB = (B<=G);
H2 = H.*HB;
H = H1 + H2;




figure, imagesc(L), colormap(gray), title('L')
figure, imagesc(S), colormap(gray), title('S')
figure, imagesc(H), colormap(gray), title('H')



HSV(:,:,1) = S;
HSV(:,:,2) = L;
HSV(:,:,3) = H/3.14;

figure, imshow(HSV), title('HSV')

% 
% 
% % imgrgb=hsv2rgb(imghsv);
% % figure;imshow(imgrgb);
% 
% imghsv=rgb2hsv(img);
% figure;imshow(imghsv);
% 
% imghsv=rgb2hsv(img);
% figure;imshow(imghsv), title('HSV');
% 
% imgntsc=rgb2ntsc(img);
% figure;imshow(imgntsc), title('Luminance in YIQ Color Space ou YUV');
% 
% imgycbcr=rgb2ycbcr(img);
% figure;imshow(imgycbcr), title('rgb2ycbcr');
% imghsv=rgb2hsv(img);
% figure;imshow(imghsv), title('HSV');
% 
% % figure, imshow(YUV), title('YUV 2')
% 
% break
% 
% Ho = imghsv(:,:,1);
% So = imghsv(:,:,2);
% Vo = imghsv(:,:,3);
% 
% figure, imagesc(Ho), colormap(gray), title('Ho')
% figure, imagesc(So), colormap(gray), title('So')
% figure, imagesc(Vo), colormap(gray), title('Vo')