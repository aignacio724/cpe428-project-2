%Project 2
%Part B, Edge Detection - LoG Operator
clear;
clc;

a = rgb2gray(imread('corner_window.jpg'));
b = rgb2gray(imread('corridor.jpg'));
c = rgb2gray(imread('New York City.jpg'));
d = rgb2gray(imread('tree.jpg'));

windowSize = 5;
sigma = 1;

logA = laplacianOfGaussian(a, windowSize, sigma);
logB = laplacianOfGaussian(b, windowSize, sigma);
logC = laplacianOfGaussian(c, windowSize, sigma);
logD = laplacianOfGaussian(d, windowSize, sigma);

figure
subplot(221), imshow(logA), title('corner window, Sigma = 1');
subplot(222), imshow(logB), title('corridor, Sigma = 1');
subplot(223), imshow(logC), title('New York City, Sigma = 1');
subplot(224), imshow(logD), title('Tree, Sigma = 1');

sigma = 2;

logA = laplacianOfGaussian(a, windowSize, sigma);
logB = laplacianOfGaussian(b, windowSize, sigma);
logC = laplacianOfGaussian(c, windowSize, sigma);
logD = laplacianOfGaussian(d, windowSize, sigma);

figure
subplot(221), imshow(logA), title('corner window, Sigma = 2');
subplot(222), imshow(logB), title('corridor, Sigma = 2');
subplot(223), imshow(logC), title('New York City, Sigma = 2');
subplot(224), imshow(logD), title('Tree, Sigma = 2');