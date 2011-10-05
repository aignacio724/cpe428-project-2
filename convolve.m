function [val] = convolve(a, b)
    [imR imC] = size(a);
    [kR kC] = size(b);

    tempR = imR - kR + 1;
    tempC = imC - kC + 1;
    
    val = uint8(zeros(tempR, tempC));
    
    for rows = 1:kR,
        for columns = 1:kC
            xpart = a(kR-rows+1:imR-rows+1, kC-columns+1:imC-columns+1);
            val = val + xpart * b(rows, columns);
        end
    end
end