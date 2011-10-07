%Project 2
%Part B, Hough Transform

clear;
clc;

a = rgb2gray(imread('corner_window.jpg'));
b = rgb2gray(imread('corridor.jpg'));
c = rgb2gray(imread('New York City.jpg'));
d = rgb2gray(imread('tree.jpg'));

windowSize = 3;
sigma = 4;

% Extract edges.
[ga GAms GAmst GAabs GAabst] = EdgeDetect(a, 'sobel', windowSize, sigma);
[gb GBms GBmst GBabs GBabst] = EdgeDetect(b, 'sobel', windowSize, sigma);
[gc GCms GCmst GCabs GCabst] = EdgeDetect(c, 'sobel', windowSize, sigma);
[gd GDms GDmst GDabs GDabst] = EdgeDetect(d, 'sobel', windowSize, sigma);

[HA,TA,RA] = hough(GAabst,'RhoResolution',0.5,'Theta',-90:0.5:89.5);
[HB,TB,RB] = hough(GBabst,'RhoResolution',0.5,'Theta',-90:0.5:89.5);
[HC,TC,RC] = hough(GCabst,'RhoResolution',0.5,'Theta',-90:0.5:89.5);
[HD,TD,RD] = hough(GDabst,'RhoResolution',0.5,'Theta',-90:0.5:89.5);

P = houghpeaks(HA,5,'threshold',ceil(0.3*max(HA(:))));
figure
subplot(221), imshow(a), title('original');

%Display the sine waveform
subplot(2,2,[3 4]), imshow(imadjust(mat2gray(HB)),'XData',TB,'YData',RB,...
      'InitialMagnification','fit');
title('Hough Transform of corner window');
xlabel('\theta'), ylabel('\rho');
axis on, axis normal, hold on;
x = TB(P(:,2));
y = RB(P(:,1));
plot(x,y,'s','color','black');

lines = houghlines(GAabst,TA,RA,P,'FillGap',5,'MinLength',7);

subplot(222), imshow(GAabst), title('Sobel Filter'), hold on 
max_len = 0;

%Overlay the found lines onto the binary image
for k = 1:length(lines)
   xy = [lines(k).point1; lines(k).point2];
   plot(xy(:,1),xy(:,2),'LineWidth',2,'Color','green');

   % Plot beginnings and ends of lines
   plot(xy(1,1),xy(1,2),'x','LineWidth',2,'Color','yellow');
   plot(xy(2,1),xy(2,2),'x','LineWidth',2,'Color','red');

   % Determine the endpoints of the longest line segment
   len = norm(lines(k).point1 - lines(k).point2);
   if ( len > max_len)
      max_len = len;
      xy_long = xy;
   end
end

% highlight the longest line segment
plot(xy_long(:,1),xy_long(:,2),'LineWidth',2,'Color','red');

P = houghpeaks(HB,5,'threshold',ceil(0.3*max(HB(:))));
figure
subplot(221), imshow(b), title('original');

%Display the sine waveform
subplot(2,2,[3 4]), imshow(imadjust(mat2gray(HB)),'XData',TB,'YData',RB,...
      'InitialMagnification','fit');
title('Hough Transform of corner window');
xlabel('\theta'), ylabel('\rho');
axis on, axis normal, hold on;
x = TB(P(:,2));
y = RB(P(:,1));
plot(x,y,'s','color','black');

lines = houghlines(GBabst,TB,RB,P,'FillGap',5,'MinLength',7);

subplot(222), imshow(GBabst), title('Sobel Filter'), hold on 

%Overlay the found lines onto the binary image
max_len = 0;
for k = 1:length(lines)
   xy = [lines(k).point1; lines(k).point2];
   plot(xy(:,1),xy(:,2),'LineWidth',2,'Color','green');

   % Plot beginnings and ends of lines
   plot(xy(1,1),xy(1,2),'x','LineWidth',2,'Color','yellow');
   plot(xy(2,1),xy(2,2),'x','LineWidth',2,'Color','red');

   % Determine the endpoints of the longest line segment
   len = norm(lines(k).point1 - lines(k).point2);
   if ( len > max_len)
      max_len = len;
      xy_long = xy;
   end
end

% highlight the longest line segment
plot(xy_long(:,1),xy_long(:,2),'LineWidth',2,'Color','red');

P = houghpeaks(HC,5,'threshold',ceil(0.3*max(HC(:))));
figure
subplot(221), imshow(c), title('original');

%Display the sine waveform
subplot(2,2,[3 4]), imshow(imadjust(mat2gray(HC)),'XData',TC,'YData',RC,...
      'InitialMagnification','fit');
title('Hough Transform of corner window');
xlabel('\theta'), ylabel('\rho');
axis on, axis normal, hold on;
x = TC(P(:,2));
y = RC(P(:,1));
plot(x,y,'s','color','black');

lines = houghlines(GCabst,TC,RC,P,'FillGap',5,'MinLength',7);

subplot(222), imshow(GCabst), title('Sobel Filter'), hold on 

%Overlay the found lines onto the binary image
max_len = 0;
for k = 1:length(lines)
   xy = [lines(k).point1; lines(k).point2];
   plot(xy(:,1),xy(:,2),'LineWidth',2,'Color','green');

   % Plot beginnings and ends of lines
   plot(xy(1,1),xy(1,2),'x','LineWidth',2,'Color','yellow');
   plot(xy(2,1),xy(2,2),'x','LineWidth',2,'Color','red');

   % Determine the endpoints of the longest line segment
   len = norm(lines(k).point1 - lines(k).point2);
   if ( len > max_len)
      max_len = len;
      xy_long = xy;
   end
end

% highlight the longest line segment
plot(xy_long(:,1),xy_long(:,2),'LineWidth',2,'Color','red');

P = houghpeaks(HD,5,'threshold',ceil(0.3*max(HD(:))));
figure
subplot(221), imshow(d), title('original');

%Display the sine waveform
subplot(2,2,[3 4]), imshow(imadjust(mat2gray(HD)),'XData',TD,'YData',RD,...
      'InitialMagnification','fit');
title('Hough Transform of corner window');
xlabel('\theta'), ylabel('\rho');
axis on, axis normal, hold on;
x = TD(P(:,2));
y = RD(P(:,1));
plot(x,y,'s','color','black');

lines = houghlines(GDabst,TD,RD,P,'FillGap',5,'MinLength',7);

subplot(222), imshow(GDabst), title('Sobel Filter'), hold on 
max_len = 0;

%Overlay the found lines onto the binary image
for k = 1:length(lines)
   xy = [lines(k).point1; lines(k).point2];
   plot(xy(:,1),xy(:,2),'LineWidth',2,'Color','green');

   % Plot beginnings and ends of lines
   plot(xy(1,1),xy(1,2),'x','LineWidth',2,'Color','yellow');
   plot(xy(2,1),xy(2,2),'x','LineWidth',2,'Color','red');

   % Determine the endpoints of the longest line segment
   len = norm(lines(k).point1 - lines(k).point2);
   if ( len > max_len)
      max_len = len;
      xy_long = xy;
   end
end

% highlight the longest line segment
plot(xy_long(:,1),xy_long(:,2),'LineWidth',2,'Color','red');