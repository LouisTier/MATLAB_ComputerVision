function [val,len] = rle(x)
% RLE   Run Length Encoding
%    [VAL,LEN] = rle(X) encodes the data in vector X into run values, VAL, and
%    run lengths, LEN.
%
%    Example:
% 		>> X = [1 1 1 1 3 3 8 8 8 8 8 8 1]
%       >> [VAL,LEN] = rle(X)
%    Returns:
%       X =
%            1     1     1     1     3     3     8     8     8     8     8     8     1
%       VAL =
%            1     3     8    1
%       LEN =
%            4     2     6    1
%
%    See also rld.

idx_change = []; %On initialise la liste
len = [];
val= [];

% Transpose input vector if necessary
if (size(x,2)==1)
    x = x.';
end

% Error checking
if (size(x,1)~=1)
    error('RLE can only process vectors, not matrices')
end

for i = 1:length(x)-1 % On parcourt le vecteur X   
      if x(i) ~= x(i+1) % On compare les élements deux à deux
        idx_change = [idx_change i]; 
        % On ajoute les indexes de changements d'indice du vecteur X
      endif
endfor
idx_change %Permet d'afficher idx_change
for j = 1:length(idx_change)
       
        val = [val x(idx_change(j))]; 
      
endfor

% Help to encode:
% - Find the indexes before each change in X (you could create a vector named idx_change). In the example idx_change = [4  6 12].
%   You could use the 'find' function, or a loop.
% - Process the LEN output (you could use a 'diff' on idx_change. Check your result with the example.)
% - Process the VAL output (you could use values of x at indexes that are stored in idx_change)

val = val;

len = diff([0 idx_change idx_change(end)+x(end)]); % Retourne le vecteur
% [idx_change(2) - idx_change(1), idx_change(3) - idx_change(2), ...]
endfunction

%FONCTION FAUSSE
