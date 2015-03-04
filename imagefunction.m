function [] = imagefunction( filename, redval, greenval, blueval )
%UNTITLED2 Summary of this function goes here
%   This function brightens the red values of the left 1/2 of the image (by
%   redval), brightens green in the right 1/2 of the image (by greenval), 
%   and darkens blue pixels (by blueval) where the blue values are greater 
%   than 150 and then replaces the original file with the final image. The 
%   function should output the total number of pixels in the image in 
%   units of megapixels.

image = imread(filename);

[r,c] = size(image);

redlayer = image(:,:,1);
greenlayer = image(:,:,2);
bluelayer = image(:,:,3);

redlayer(:,1:(c/2)) = redlayer(:,1:(c/2))+redval;
greenlayer(:,(c/2):c) = greenlayerlayer(:,(c/2):c)+greenval;
bluemask = 



end
