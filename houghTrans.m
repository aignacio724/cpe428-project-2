%Project 2
%Part B, Hough Transform

clear;
clc;

a = rgb2gray(imread('corner_window.jpg'));
b = rgb2gray(imread('corridor.jpg'));
c = rgb2gray(imread('New York City.jpg'));
d = rgb2gray(imread('tree.jpg'));

windowSize = 5;
sigma = 2;

% Extract edges.
logA = laplacianOfGaussian(a, windowSize, sigma);
logB = laplacianOfGaussian(b, windowSize, sigma);
logC = laplacianOfGaussian(c, windowSize, sigma);
logD = laplacianOfGaussian(d, windowSize, sigma);

[HA,TA,RA] = hough(logA,'RhoResolution',0.5,'Theta',-90:0.5:89.5);
[HB,TB,RB] = hough(logB,'RhoResolution',0.5,'Theta',-90:0.5:89.5);
[HC,TC,RC] = hough(logC,'RhoResolution',0.5,'Theta',-90:0.5:89.5);
[HD,TD,RD] = hough(logD,'RhoResolution',0.5,'Theta',-90:0.5:89.5);

figure
subplot(221), imshow(a), title('original');
subplot(222), imshow(logA), title('LoG Edge Detect');
subplot(2,2,[3 4]), imshow(imadjust(mat2gray(HA)),'XData',TA,'YData',RA,...
      'InitialMagnification','fit');
title('Hough Transform of corner window');
xlabel('\theta'), ylabel('\rho');
axis on, axis normal, hold on;

figure
subplot(221), imshow(b), title('original');
subplot(222), imshow(logB), title('LoG Edge Detect');
subplot(2,2,[3 4]), imshow(imadjust(mat2gray(HB)),'XData',TB,'YData',RB,...
      'InitialMagnification','fit');
title('Hough Transform of Corridor');
xlabel('\theta'), ylabel('\rho');
axis on, axis normal, hold on;

figure
subplot(221), imshow(c), title('original');
subplot(222), imshow(logC), title('LoG Edge Detect');
subplot(2,2,[3 4]), imshow(imadjust(mat2gray(HC)),'XData',TC,'YData',RC,...
      'InitialMagnification','fit');
title('Hough Transform of New York City');
xlabel('\theta'), ylabel('\rho');
axis on, axis normal, hold on;

figure
subplot(221), imshow(d), title('original');
subplot(222), imshow(logD), title('LoG Edge Detect');
subplot(2,2,[3 4]), imshow(imadjust(mat2gray(HD)),'XData',TD,'YData',RD,...
      'InitialMagnification','fit');
title('Hough Transform of Tree');
xlabel('\theta'), ylabel('\rho');
axis on, axis normal, hold on;
