function [id] = who_am_i(model, test_im)
    num_subjects = 7;

    for i = 1:num_subjects
        model_im = model(:,:,i);
        image_diff = abs(model_im(:) - test_im(:));
        total_diff(i) = sum(image_diff);
    end
    id = find(total_diff == min(total_diff));
