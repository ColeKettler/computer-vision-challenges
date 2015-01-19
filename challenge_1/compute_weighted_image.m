% Averages all values of two images. If only one image is provided, returns
% the first image.
function weightedImage = compute_weighted_image(image, numImages)
    weightedImage = double(image) / numImages;
end
