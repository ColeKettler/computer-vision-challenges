% Computes a weighted average image.
function model = build_model()
    num_subjects = 7;
    num_samples = 6;

    for s = 1:num_subjects
        imagePrototype = zeros(243, 320);

        for i = 1:num_samples
            fn = sprintf('train/subject%d/%d.gif', s, i);
            f = imread(fn);

            imagePrototype = imagePrototype + compute_weighted_image(f, num_samples);
        end

        model(:,:,s) = uint8(imagePrototype);
    end
end
