%Project 2
%Part A: Image Filtering
clear;
clc;

a = imread('Boat2.tif'); %Salt and Pepper
b = imread('building.gif'); %Gaussian
medianImage = zeros(size(a)); %Matrix used to store the new noise redueced image
tempImage = padarray(a, [1 1]); %Padded Matrix for window size of 3x3 median filter
tempImage2 = padarray(b, [1 1]);

val = 3;   %Filtering intensity
winSize = val*val; %Area of Window
mid = ceil(winSize/2); %Median of Window
sigma = 2;

[rows columns] = size(tempImage); %Obtaining the number of Rows and Columns

%Do the median filtering
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
        medianImage(i,j) = window(mid);
    end
end

medianImage=uint8(medianImage); %convert back to grayscale image

%# Create the gaussian filter
gaussImage = gaussianFilter(tempImage2, val, sigma);

%Display Images
figure
subplot(221), imshow(a), title('Oirignal Boat Image');
subplot(222), imshow(medianImage), title('Median Filter');
subplot(223), imshow(b), title('Original Building');
subplot(224), imshow(gaussImage), title('Gaussian Filter');