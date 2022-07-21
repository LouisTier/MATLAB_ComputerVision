function [val,len] = rle(x)
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
idx_change = [ find(x(1:end-1) ~= x(2:end)), length(x) ]; % Find the indexes before each change in X
len = diff([ 0 idx_change ]); % Process the LEN output (you could use a 'diff' on idx_change)
val = x(idx_change);          % Process the VAL output (you could use values of x at index idx_change)

endfunction