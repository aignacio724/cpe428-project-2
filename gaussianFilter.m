function [gaussian] = gaussianFilter(img, winsz, sigma) 
    kernel = fspecial('gaussian',[winsz winsz], sigma);
    [imR imC] = size(img);
    [kR kC] = size(kernel);

    tempR = imR - kR + 1;
    tempC = imC - kC + 1;
    
    gaussian = uint8(zeros(tempR, tempC));
    
    for rows = 1:kR,
        for columns = 1:kC
            xpart = img(kR-rows+1:imR-rows+1, kC-columns+1:imC-columns+1);
            gaussian = gaussian + xpart * kernel(rows, columns);
        end
    end
    %{
        % Create the gaussian filter with hsize = [5 5] and sigma = 2
        kernel = fspecial('gaussian',[winsz winsz], sigma);
        % Convolve kernel with original image
        gaussian = uint8(conv2(double(img), kernel, 'valid'));
    %}
end