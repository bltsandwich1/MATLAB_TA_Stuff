function [] = imagefunction( filename, redval, greenval, blueval )
%imagefunction Summary of this function goes here
%   This function brightens the red values of the left 1/2 of the image (by
%   redval), brightens green in the right 1/2 of the image (by greenval), 
%   and darkens blue pixels (by blueval) where the blue values are greater 
%   than 150 and then replaces the original file with the final image.
image1 = imread(filename);

[r,c,x] = size(image1);

redlayer = image1(:,:,1);
greenlayer = image1(:,:,2);
bluelayer = image1(:,:,3);

redlayer(:,[1:(c/2)]) = redlayer(:,[1:(c/2)])+redval;%This si where we brighten by our red val

greenlayer(:,[(c/2+1):c]) = greenlayer(:,[(c/2+1):c])+greenval;

bluemask = bluelayer > 150;
bluelayer(bluemask) = bluelayer(bluemask)-blueval;

finalimage = cat(3,redlayer, greenlayer, bluelayer);

imwrite(finalimage,'notmundo.jpg');

figure(1)
image(finalimage)
pause

figure(2)
image(image1)
end
