function H=entropy(img)
% Compute the shannon entropy of an image

# Number of pixels in the image
[n, m] = size(img);
nb_pix =  n * m;

# Histogramm of the image
[counts, x] = imhist(img);

# Compute probabilities. Keep only non zero values.
probas = nonzeros(counts/nb_pix);

# Shannon entropy
H = - sum (probas .* log2(probas));


endfunction