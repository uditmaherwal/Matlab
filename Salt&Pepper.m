clc;
clear all;
close all;
A = imread('sun.jpg');
N = input('Enter the window size');
B = imresize(A,[256,256]);
B = imnoise(B,'Salt & Pepper',0.1);
[m n] = size(B);
R = B(:,:,1);
G = B(:,:,2);
B = B(:,:,3);
out_R = Func_medianall(R,N);
out_G = Func_medianall(G,N);
out_B = Func_medianall(B,N);
out_image(:,:,1) = out_R;
out_image(:,:,2) = out_G;
out_image(:,:,3) = out_B;
imshow(uint8(B));
title('Noise Added Figure');
imshow(uint8(out_image));
title('Average Filtered');

gtext('Udit Maherwal 17EGJCS171');
