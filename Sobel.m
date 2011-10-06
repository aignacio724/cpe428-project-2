%Project 2
%Part B, Sobel Operator
clear;
clc;

a = rgb2gray(imread('corner_window.jpg'));
b = rgb2gray(imread('corridor.jpg'));
c = rgb2gray(imread('New York City.jpg'));
d = rgb2gray(imread('tree.jpg'));

windowSize = 5;
sigma = 2;

% Sobel
%sobelMask = fspecial('sobel');

%Obtain the gaussian filters for each image
%{
    ga = gaussianFilter(a, windowSize, sigma);
    gb = gaussianFilter(b, windowSize, sigma);
    gc = gaussianFilter(c, windowSize, sigma);
    gd = gaussianFilter(d, windowSize, sigma);
%}
%obtain the gradian matrices for each gaussian filtered image

[ga GAms GAmst GAabs GAabst] = EdgeDetect(a, 'sobel', windowSize, sigma);%gradients(ga, sobelMask);
[gb GBms GBmst GBabs GBabst] = EdgeDetect(b, 'sobel', windowSize, sigma);%gradients(gb, sobelMask);
[gc GCms GCmst GCabs GCabst] = EdgeDetect(c, 'sobel', windowSize, sigma);%gradients(gc, sobelMask);
[gd GDms GDmst GDabs GDabst] = EdgeDetect(d, 'sobel', windowSize, sigma);%gradients(gd, sobelMask);

%Display the Images, both the Original and Filterd
figure
subplot(121), imshow(a), title('Original');
subplot(122), imshow(ga), title('Gaussian Filtered');

%Display the Edge Detected Images
figure
subplot(221), imshow(GAms), title('Mean Square, no threshold - Sobel');
subplot(222), imshow(GAabs), title('Sum of Absolutes, no threshold - Sobel');
subplot(223), imshow(GAmst), title('Mean Square Gradient - Sobel');
subplot(224), imshow(GAabst), title('Sum of Absolutes - Sobel');

%Display the Images, both the Original and Filterd
figure
subplot(121), imshow(b), title('Original');
subplot(122), imshow(gb), title('Gaussian Filtered');

%Display the Edge Detected Images
figure
subplot(221), imshow(GBms), title('Mean Square, no threshold - Sobel');
subplot(222), imshow(GBabs), title('Sum of Absolutes, no threshold - Sobel');
subplot(223), imshow(GBmst), title('Mean Square Gradient - Sobel');
subplot(224), imshow(GBabst), title('Sum of Absolutes - Sobel');

%Display the Images, both the Original and Filterd
figure
subplot(121), imshow(c), title('Original');
subplot(122), imshow(gc), title('Gaussian Filtered');

%Display the Edge Detected Images
figure
subplot(221), imshow(GCms), title('Mean Square, no threshold - Sobel');
subplot(222), imshow(GCabs), title('Sum of Absolutes, no threshold - Sobel');
subplot(223), imshow(GCmst), title('Mean Square Gradient - Sobel');
subplot(224), imshow(GCabst), title('Sum of Absolutes - Sobel');

%Display the Images, both the Original and Filterd
figure
subplot(121), imshow(d), title('Original');
subplot(122), imshow(gd), title('Gaussian Filtered');

%Display the Edge Detected Images
figure
subplot(221), imshow(GDms), title('Mean Square, no threshold - Sobel');
subplot(222), imshow(GDabs), title('Sum of Absolutes, no threshold - Sobel');
subplot(223), imshow(GDmst), title('Mean Square Gradient - Sobel');
subplot(224), imshow(GDabst), title('Sum of Absolutes - Sobel');