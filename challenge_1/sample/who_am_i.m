function [id] = who_am_i ( model, test_im )

avg_test = mean ( double ( test_im(:) ) );

abs_diff = abs(model.avg - avg_test);

id = find ( abs_diff == min (abs_diff) );

