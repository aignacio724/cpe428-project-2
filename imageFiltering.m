%Project 2
%Part A: Image Filtering

a = imread('Boat2.tif');
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
figure
subplot(221), imshow(a), title('Boat');
subplot(222), imshow(tempImage), title('Padded Boat');
subplot(223), imshow(cleanImage), title('Filtered');



whos