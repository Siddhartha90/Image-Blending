% starter script for project 3
DO_BLEND = true;
DO_MIXED  = true;

if DO_BLEND
    % do a small one first, while debugging
    im_background = imresize(im2double(imread('./samples/beach2.jpg')), 0.25, 'bilinear');
    im_object = imresize(im2double(imread('./samples/deadmau5.jpg')), 0.25, 'bilinear');

    % get source region mask from the user
    objmask = getMask(im_object);
    % align im_s and mask_s with im_background
    [im_s, mask_s] = alignSource(im_object, objmask, im_background);

    % blend
    im_blend = poissonBlend(im_s, mask_s, im_background);
    figure(3), hold off, imshow(im_blend)
end

if DO_MIXED
    % read images
    %...
     % do a small one first, while debugging
    im_background = imresize(im2double(imread('./samples/beach2.jpg')), 0.25, 'bilinear');
    im_object = imresize(im2double(imread('./samples/deadmau5.jpg')), 0.25, 'bilinear');

    % get source region mask from the user
    objmask = getMask(im_object);
    % align im_s and mask_s with im_background
    [im_s, mask_s] = alignSource(im_object, objmask, im_background);
    % blend
    im_blend = mixedBlend(im_s, mask_s, im_background);
    figure(4), hold off, imshow(im_blend);
end

