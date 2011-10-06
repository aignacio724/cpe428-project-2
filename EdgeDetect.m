function [G Gms Gmst Gabs Gabst] = EdgeDetect(img, maskType, windowSize, sigma)
    %filter mask
    mask = fspecial(maskType);

    %Obtain the gaussian filters for each image
    G = gaussianFilter(img, windowSize, sigma);

    %obtain the gradian matrices for each gaussian filtered image
    [Gms Gmst Gabs Gabst] = gradients(G, mask);

end