close all;
clear all;
clc;
A = imread('cameraman.tif');
A_gray = rgb2gray(A);
fc = 100;
X = fftshift(ifft2(A_gray));
[co,ro] = size(A_gray);
cx = round(co/2);   %divide in column
cy = round(co/2);   %divide in row
H = zeros(co,ro);
for i = 1:co
    for j =1:ro        
        d = (i-cx).^2+(j-cy).^2;
        H(i,j) = exp(-d/2/fc/fc);        
    end;
end;
H = 1-H;
out = zeros(co,ro);
outf = X.*H;
out = abs(ifft2(outf));
imshow(A_gray), title('Original Image'), figure, imshow(outf), title('Filtered Image');
figure, imshow(H), title('2D View of H'), figure, surf(H), title('3D View of H');
gtext('Udit Maherwal')
