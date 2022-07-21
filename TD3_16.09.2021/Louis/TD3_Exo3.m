clear all;
close all;
%Multiplication matricielle : A*B
%Multiplication point par point : A .* B

I = imread('baboon_ng.jpg');
figure();
imshow(I);

M = max(max(max(I)));

R = I(:,:,1);
G = I(:,:,2);
B = I(:,:,3);

Y = 0.3*R + 0.59*G + 0.11*B;
U = 0.49*(B-Y);
V = 0.88*(R-Y);

figure();
subplot(1,3,1), imshow(Y);
subplot(1,3,2), imshow(U);
subplot(1,3,3), imshow(V);

YUV( :, :, 1) = Y ;
YUV( :, :, 2) = U ;
YUV( :, :, 3) = V ; 
figure();
imshow(YUV), title('YUV')
