## Copyright (C) 2021 leloune
##
## This program is free software: you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
##
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <https://www.gnu.org/licenses/>.

## -*- texinfo -*-
## @deftypefn {} {@var{retval} =} f_image_max (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: leloune <leloune@LAPTOP-5IGM92UT>
## Created: 2021-09-09

function retval = f_image_max (im)
  dim = ndims(im);
  i = 1;
  retval = max(im);
  do
    retval = max(retval);
    i++;
  until(i>dim)