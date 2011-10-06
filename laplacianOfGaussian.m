function lg = laplacianOfGaussian(mat, kernsz, sigma)
    kernel = fspecial('log', kernsz, sigma);
    filteredImg = gaussianFilter(mat, kernsz, sigma);
    lg = conv2(filteredImg, kernel);
end
