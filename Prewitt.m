%Project 2
%Part B, Prewitt Operator
clear;
clc;

a = rgb2gray(imread('corner_window.jpg'));
b = rgb2gray(imread('corridor.jpg'));
c = rgb2gray(imread('New York City.jpg'));
d = rgb2gray(imread('tree.jpg'));

windowSize = 5;
sigma = 2;

% Prewitt
%PrewittMask = fspecial('Prewitt');

%obtain the gradian matrices for each gaussian filtered image

[ga GAms GAmst GAabs GAabst] = EdgeDetect(a, 'prewitt', windowSize, sigma);
[gb GBms GBmst GBabs GBabst] = EdgeDetect(b, 'prewitt', windowSize, sigma);
[gc GCms GCmst GCabs GCabst] = EdgeDetect(c, 'prewitt', windowSize, sigma);
[gd GDms GDmst GDabs GDabst] = EdgeDetect(d, 'prewitt', windowSize, sigma);

%Display the Images, both the Original and Filterd
figure
subplot(121), imshow(a), title('Original');
subplot(122), imshow(ga), title('Gaussian Filtered');

%Display the Edge Detected Images
figure
subplot(221), imshow(GAms), title('Mean Square, no threshold - Prewitt');
subplot(222), imshow(GAabs), title('Sum of Absolutes, no threshold - Prewitt');
subplot(223), imshow(GAmst), title('Mean Square Gradient - Prewitt');
subplot(224), imshow(GAabst), title('Sum of Absolutes - Prewitt');

%Display the Images, both the Original and Filterd
figure
subplot(121), imshow(b), title('Original');
subplot(122), imshow(gb), title('Gaussian Filtered');

%Display the Edge Detected Images
figure
subplot(221), imshow(GBms), title('Mean Square, no threshold - Prewitt');
subplot(222), imshow(GBabs), title('Sum of Absolutes, no threshold - Prewitt');
subplot(223), imshow(GBmst), title('Mean Square Gradient - Prewitt');
subplot(224), imshow(GBabst), title('Sum of Absolutes - Prewitt');

%Display the Images, both the Original and Filterd
figure
subplot(121), imshow(c), title('Original');
subplot(122), imshow(gc), title('Gaussian Filtered');

%Display the Edge Detected Images
figure
subplot(221), imshow(GCms), title('Mean Square, no threshold - Prewitt');
subplot(222), imshow(GCabs), title('Sum of Absolutes, no threshold - Prewitt');
subplot(223), imshow(GCmst), title('Mean Square Gradient - Prewitt');
subplot(224), imshow(GCabst), title('Sum of Absolutes - Prewitt');

%Display the Images, both the Original and Filterd
figure
subplot(121), imshow(d), title('Original');
subplot(122), imshow(gd), title('Gaussian Filtered');

%Display the Edge Detected Images
figure
subplot(221), imshow(GDms), title('Mean Square, no threshold - Prewitt');
subplot(222), imshow(GDabs), title('Sum of Absolutes, no threshold - Prewitt');
subplot(223), imshow(GDmst), title('Mean Square Gradient - Prewitt');
subplot(224), imshow(GDabst), title('Sum of Absolutes - Prewitt');