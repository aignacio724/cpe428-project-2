%Project 2
%Part A: Image Filtering
clear;
clc;

a = imread('building.gif');
cleanImage = zeros(size(a)); %Matrix used to store the new noise redueced image
tempImage = padarray(a, [1 1]); %Padded Matrix for window size of 3x3

val = 3;   %Filtering intensity
winSize = val*val; %Area of Window
mid = ceil(winSize/2); %Median of Window

[rows columns] = size(tempImage); %Obtaining the number of Rows and Columns

for i = 1:(rows - 2),
    for j = 1:(columns - 2),
        window = zeros(winSize); %1D array Sliding Window for filtering
        counter = 1; %Counter used to loop through the 1D array
        for x = 1:val,
            for y = 1:val,
                window(counter) = tempImage(i+x-1,j+y-1);
                counter = counter + 1;
            end
        end
        window = sort(window); %Sort the window matrix to find median
        cleanImage(i,j) = window(mid);
    end
end

cleanImage=uint8(cleanImage); %convert back to grayscale image

%%# Read an image
I = imread('building.gif');
%# Create the gaussian filter with hsize = [5 5] and sigma = 2
gaussMatrix = fspecial('gaussian',[5 5],2);
%# Filter it
Ig = imfilter(I,gaussMatrix,'same');

figure
subplot(221), imshow(a), title('Oirignal Image');
subplot(222), imshow(tempImage), title('Padded Image');
subplot(223), imshow(cleanImage), title('Median');
subplot(224), imshow(Ig), title('Gaussian');