tic;
Image = imread(fullfile('training', '001-1.jpg'));
img = rgb2hsv(ecbp(Image, 1, 20));

hue = rgbchannel(img, 1);
imshow(hsv2rgb(hue));
%myaa(9);

cp2tform
imtransform
    

%Convert Image to grayscale by setting rgb to their mean value
%GreyImg = (Image(:,:,1)+Image(:,:,2)+Image(:,:,3))/3;
%GreyImg(50,50) = 255;
%Image(:,:,1) = GreyImg;
%Image(:,:,2) = GreyImg;
%Image(:,:,3) = GreyImg;
%imagesc(Image)
%Threshold

%Image_t = double(Image > 150)*255;
%imagesc(Image_t)


toc