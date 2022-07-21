function y = scan(x, type)

% Transform a matrix to a vector using row scan or column scan
% x: input matrix
% type: can be 'row' or 'col'

% Examples:
% X = [1 2 3
%      4 5 6
%      7 8 9 ]

% X=[1 2 3; 4 5 6; 7 8 9 ]
% y = scan(X, 'row')
% y =  1   2   3   4   5   6   7   8   9

% y = scan(X, 'col')
% y =  1   4   7   2   5   8   3   6   9


[nb_r, nb_c] = size(x);
y = zeros(1, nb_r * nb_c);

switch type
  case "row"
      idx = 1;
      for r = 1:nb_r
        for c = 1:nb_c
          y(idx) = x(r, c);
          idx +=1;
        endfor
      endfor

  case "col"
      idx = 1;
      for c = 1:nb_c
        for r = 1:nb_r
          y(idx) = x(r, c);
          idx +=1;
        endfor
      endfor



endswitch
endfunction