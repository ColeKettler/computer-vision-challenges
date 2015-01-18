function [model] = build_model ()

% for each image, load the images and find the average intensity

for s = 1:7
    total = 0;
    ct = 0;
    
    for i = 1:6
        fn = sprintf ( 'train/subject%d/%d.gif', s, i );
        f = imread ( fn );
        
        total = total + double ( sum(f(:)) );
        ct = ct + numel ( f );
    end
    
    model.avg(s) = total / double (ct);
end
