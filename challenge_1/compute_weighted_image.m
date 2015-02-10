% Compute weighted average value of an image.
function weightedImage = compute_weighted_image(image, numImages)
    weightedImage = double(image) / numImages;
end
