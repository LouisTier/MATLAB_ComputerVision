im = imread("baboon.bmp");
figure, imshow(im), title('image originale');

grey = rgb2gray(im);
figure, imshow(grey), title('grey');

inv_im = f_inverse(im);
figure, imshow(inv_im), title('inverse of baboon');

inv_grey = f_inverse(grey);
figure, imshow(inv_grey), title('inverse of grey');