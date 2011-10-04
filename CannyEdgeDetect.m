%Project 2
%Part B, Canny Edge Detection
clear;
clc;

%Read In Images
a = rgb2gray(imread('corner_window.jpg'));
b = rgb2gray(imread('corridor.jpg'));
c = rgb2gray(imread('New York City.jpg'));
d = rgb2gray(imread('tree.jpg'));

%Apply Canny Edge Detection, Default Sigma and Thresholds
A = edge(a,'canny');
B = edge(b,'canny');
C = edge(c,'canny');
D = edge(d,'canny');

%Canny Edget Detection Sigma = 1 Threshold[low high] 
E = edge(a,'canny', [0 0.25], 1);
F = edge(b,'canny', [0 0.25], 1);
G = edge(c,'canny', [0 0.25], 1);
H = edge(d,'canny', [0 0.25], 1);

%Canny Edget Detection Sigma = 1 Threshold[low high]
I = edge(a,'canny', [0 0.5], 1);
J = edge(b,'canny', [0 0.5], 1);
K = edge(c,'canny', [0 0.5], 1);
L = edge(d,'canny', [0 0.5], 1);

%Canny Edget Detection Sigma = 4 Threshold[low high]
M = edge(a,'canny', [0 0.25], 4);
N = edge(b,'canny', [0 0.25], 4);
O = edge(c,'canny', [0 0.25], 4);
P = edge(d,'canny', [0 0.25], 4);

%Canny Edget Detection Sigma = 4 Threshold[low high]
Q = edge(a,'canny', [0 0.5], 4);
R = edge(b,'canny', [0 0.5], 4);
S = edge(c,'canny', [0 0.5], 4);
T = edge(d,'canny', [0 0.5], 4);

%Canny Edget Detection Sigma = 1 Threshold[low high]
U = edge(a,'canny', [0.15 0.25], 1);
V = edge(b,'canny', [0.15 0.25], 1);
W = edge(c,'canny', [0.15 0.25], 1);
X = edge(d,'canny', [0.15 0.25], 1);

%Canny Edget Detection Sigma = 1 Threshold[low high]
Y = edge(a,'canny', [0.4 0.5], 1);
Z = edge(b,'canny', [0.4 0.5], 1);
A1 = edge(c,'canny', [0.4 0.5], 1);
B1 = edge(d,'canny', [0.4 0.5], 1);

%Canny Edget Detection Sigma = 4 Threshold[low high]
C1 = edge(a,'canny', [0.15 0.25], 4);
D1 = edge(b,'canny', [0.15 0.25], 4);
E1 = edge(c,'canny', [0.15 0.25], 4);
F1 = edge(d,'canny', [0.15 0.25], 4);

%Canny Edget Detection Sigma = 4 Threshold[low high]
G1 = edge(a,'canny', [0.4 0.5], 4);
H1 = edge(b,'canny', [0.4 0.5], 4);
I1 = edge(c,'canny', [0.4 0.5], 4);
J1 = edge(d,'canny', [0.4 0.5], 4);

figure
subplot(221), imshow(a), title('Corner Window Original');
subplot(222), imshow(b), title('Corridor Original');
subplot(223), imshow(c), title('New York City Original');
subplot(224), imshow(d), title('Tree Orignial');

figure
subplot(221), imshow(A), title('Corner Window');
subplot(222), imshow(B), title('Corridor');
subplot(223), imshow(C), title('New York City');
subplot(224), imshow(D), title('Tree');

figure
subplot(221), imshow(E), title('Corner Window Sigma = 1 Threshold[0 0.25]');
subplot(222), imshow(F), title('Corridor Sigma = 1 Threshold[0 0.25]');
subplot(223), imshow(G), title('New York City Sigma = 1 Threshold[0 0.25]');
subplot(224), imshow(H), title('Tree Sigma = 1 Threshold[0 0.25]');

figure
subplot(221), imshow(I), title('Corner Window Sigma = 1 Threshold[0 0.5]');
subplot(222), imshow(J), title('Corridor Sigma = 1 Threshold[0 0.5]');
subplot(223), imshow(K), title('New York City Sigma = 1 Threshold[0 0.5]');
subplot(224), imshow(L), title('Tree Sigma = 1 Threshold[0 0.5]');

figure
subplot(221), imshow(M), title('Corner Window Sigma = 4 Threshold[0 0.25]');
subplot(222), imshow(N), title('Corridor Sigma = 4 Threshold[0 0.25]');
subplot(223), imshow(O), title('New York City Sigma = 4 Threshold[0 0.25]');
subplot(224), imshow(P), title('Tree Sigma = 4 Threshold[0 0.25]');

figure
subplot(221), imshow(Q), title('Corner Window Sigma = 4 Threshold[0 0.5]');
subplot(222), imshow(R), title('Corridor Sigma = 4 Threshold[0 0.5]');
subplot(223), imshow(S), title('New York City Sigma = 4 Threshold[0 0.5]');
subplot(224), imshow(T), title('Tree Sigma = 4 Threshold[0 0.5]');

figure
subplot(221), imshow(U), title('Corner Window Sigma = 1 Threshold[0.15 0.25]');
subplot(222), imshow(V), title('Corridor Sigma = 1 Threshold[0.15 0.25]');
subplot(223), imshow(W), title('New York City Sigma = 1 Threshold[0.15 0.25]');
subplot(224), imshow(X), title('Tree Sigma = 1 Threshold[0.15 0.25]');

figure
subplot(221), imshow(Y), title('Corner Window Sigma = 1 Threshold[0.4 0.5]');
subplot(222), imshow(Z), title('Corridor Sigma = 1 Threshold[0.4 0.5]');
subplot(223), imshow(A1), title('New York City Sigma = 1 Threshold[0.4 0.5]');
subplot(224), imshow(B1), title('Tree Sigma = 1 Threshold[0.4 0.5]');

figure
subplot(221), imshow(C1), title('Corner Window Sigma = 4 Threshold[0.15 0.25]');
subplot(222), imshow(D1), title('Corridor Sigma = 4 Threshold[0.15 0.25]');
subplot(223), imshow(E1), title('New York City Sigma = 4 Threshold[0.15 0.25]');
subplot(224), imshow(F1), title('Tree Sigma = 4 Threshold[0.15 0.25]')

figure
subplot(221), imshow(G1), title('Corner Window Sigma = 4 Threshold[0.4 0.5]');
subplot(222), imshow(H1), title('Corridor Sigma = 4 Threshold[0.4 0.5]');
subplot(223), imshow(I1), title('New York City Sigma = 4 Threshold[0.4 0.5]');
subplot(224), imshow(J1), title('Tree Sigma = 4 Threshold[0.4 0.5]');