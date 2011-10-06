function [Gms Gmst Gabs Gabst] = gradients(g, mask)
    %Gx = convolve(g, mask);
    %Gy = convolve(g, mask');
    Gx = conv2(g, mask);
    Gy = conv2(g, mask');

    
    Gms = uint8(sqrt(Gx.*Gx + Gy.*Gy));
    Gmst = im2bw(Gms, 0.95);

    Gabs = uint8(abs(Gx) + abs(Gy));
    Gabst = im2bw(Gabs, 0.95);
end