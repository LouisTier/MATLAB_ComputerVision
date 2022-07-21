function [im_norm] = f_normalisation(im)
  x_min = f_image_min(im);
  x_max = f_image_max(im);
  im_norm = (im - x_min) ./ (x_max - x_min);
