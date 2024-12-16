%% Circle Detection Using Hough Transform

% 1. Data acquisition
img = imread('images/005_noisy.jpg');

% 2. Preprocessing

% 2 (a) Grayscale conversion
% if size(img, 3) == 3
%     img_gray = rgb2gray(img);
% else
%     img_gray = img;
% end
%%
% 2 (b) Noise reduction
% denoised_img = uint8(zeros(size(img)));  % Initialize with the same type (uint8)

denoised_img = img;
% Apply median filter to each color channel (R, G, B)
for c = 1:3
    denoised_img(:,:,c) = medfilt2(img(:,:,c), [6 6]);
end
imshow(denoised_img);
title('Denoised image');
%%
% 2 (c) Image enhancement
% Create a blurred version of the image (using Gaussian blur)
h = fspecial('gaussian', [8 8], 1);  
blurred_img = imfilter(denoised_img, h);
img_sharp = imadd(denoised_img, denoised_img - blurred_img);
subplot(1,2,1);
imshow(denoised_img);
title('Denoised image');
subplot(1,2,2);
imshow(img_sharp);
title('Enhanced image');
%%
% 3. Edge detection
% Apply Canny edge detector
edges = edge(rgb2gray(img_sharp), 'Canny');
imshow(edges);
figure();
imshow(img_sharp);
%imdistline();
%%
% 4. Contour extraction
% Define range for radius of circles to detect
radius_range = [22 320]; % Adjust based on your image
% Apply Hough transform for circles
[centers, radii, metric] = imfindcircles(edges, radius_range, 'Sensitivity', 0.89);
%%
% 5. Output visualization
% Display results
figure();
imshow(img_sharp);
hold on;
viscircles(centers, radii, 'EdgeColor', 'b');
hold off;
title('Detected Circles');