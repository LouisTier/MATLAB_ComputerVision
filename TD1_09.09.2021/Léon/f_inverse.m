function [im_inv] = f_inverse(im)
  im_inv = f_image_max(im) - im;