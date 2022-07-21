function [val,len] = rle_loop(x)
% RLE   Run Length Encoding
%    [VAL, LEN] = rle(X) encodes the data in vector X into run values, VAL, and
%    run lengths, LEN.
%
%    Example:
% 		>> X = [1 1 1 1 3 3 8 8 8 8 8 8]
%       >> [VAL,LEN] = rle(X)
%    Returns:
%       X =
%            1     1     1     1     3     3     8     8     8     8     8     8
%       VAL =
%            1     3     8
%       LEN =
%            4     2     6
%
%    See also rld.

% Transpose input vector if necessary
if (size(x,2)==1)
    x = x.';
end

% Error checking
if (size(x,1)~=1)
    error('RLE can only process vectors, not matrices')
end

% Encode

% Find the indexes before each change in X (you could create a vector named idx_change). In the example idx_change = [4  6 12].
idx_change = [];
current_value = x(1);
for i = 1:length(x)
  if (x(i) != current_value)
    idx_change = [idx_change i-1];
  endif
  current_value = x(i);
endfor
idx_change = [idx_change length(x)];

len = diff([ 0 idx_change ]) % Process the LEN output (you could use a 'diff' on idx_change)
val = x(idx_change);          % Process the VAL output (you could use values of x at index idx_change)

endfunction