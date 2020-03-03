clc;
clear all;
close all;
A = imread('humm.jpg');
B = imnoise(A, 'salt & pepper');
C = imnoise(A, 'gaussian');
D = imnoise(A, 'speckle');
h1 = 1/9 * ones(3, 3);
h2 = 1/25 * ones(5, 5);
B1 = conv2(B, h1, 'same');
B2 = conv2(B, h2, 'same');
C1 = conv2(C, h1, 'same');
C2 = conv2(C, h2, 'same');
D1 = conv2(D, h1, 'same');
D2 = conv2(D, h1, 'same');
figure,subplot(2,5,1), imshow(A), title('Original Image');
subplot(2,5,2), imshow(B), title('Salt & Pepper Noise');
subplot(2,5,3), imshow(uint8(B1)), title('3x3 Averaging Filter');
subplot(2,5,4), imshow(uint8(B2)), title('5x5 Averaging Filter');

subplot(2,5,5), imshow(C), title('Gaussian Noise');
subplot(2,5,6), imshow(uint8(C1)), title('3x3 Averaging Filter');
subplot(2,5,7), imshow(uint8(C2)), title('5x5 Averaging Filter');

subplot(2,5,8), imshow(D), title('Speckle Noise');
subplot(2,5,9), imshow(uint8(D1)), title('3x3 Averaging Filter');
subplot(2,5,10), imshow(uint8(D2)), title('5x5 Averaging Filter');

gtext('Udit Maherwal 17EGJCS171');
