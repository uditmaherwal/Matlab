[filename, pathname] = uigetfile('sun.jpg');
RGB = imread([pathname filename]);
R = RGB
G = RGB
B = RGB
R(:,:,2) = 0
R(:,:,3) = 0
G(:,:,1) = 0
G(:,:,3) = 0
B(:,:,1) = 0
B(:,:,2) = 0
subplot(221);
imshow(RGB);
title('Original Image');
subplot(222);
imshow(R);
title('Red Component');
subplot(223);
imshow(G);
title('Green Component');
subplot(224);
imshow(B);
title('Blue Component');

gtext('Udit Maherwal 17EGJCS171');
