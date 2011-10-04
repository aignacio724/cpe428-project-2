function [val] = convolve(matrixA, matrixB)
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
end