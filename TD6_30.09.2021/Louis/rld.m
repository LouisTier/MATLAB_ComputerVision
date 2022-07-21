function [x] = rld(val, len)
% rld   Run Length Decoding
%    X = rle_decode(VAL,LEN) decodes the run values, VAL, and run lengths, LEN, into
%    vector X.
%
%    Example:
%       >> VAL = [1 3 8]
%       >> LEN = [4 2 6]
%       >> X = rld(VAL,LEN)
%    Returns:
%       X =
%            1     1     1     1     3     3     8     8     8     8     8     8
%
%    See also RLE.


% Error checking
if ~any(size(len)==1) | ~any(size(val)==1)
    error('len and val must be vectors.')
end

if (length(len)~=length(val))
    error('len and val vectors must be the same length.')
end

% Transpose len vector if necessary
if (size(len,2)==1)
    len = len.';
end

% Help to decode:
% - Find the indexes of each change in X (you could create a vector named idx_change. In the example above idx_change = [ 1  5  7 13].)
% - Create a vector of zeros with the same length than X
% - Modify that vector to set at 1 each index that correspond to a change in value in X
% - Create X (you could use cumsum)
% --------
% Or use a loop!
