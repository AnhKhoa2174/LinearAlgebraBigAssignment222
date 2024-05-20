A = imread("C:\Users\khach\Downloads\img1.jpg");

 % Convert the RGB image to grayscale and cast it to double precision
 X = double(rgb2gray(A));

 % Get the dimensions of the grayscale image
 nx = size(X, 1);
 ny = size(X, 2);
 % Display the grayscale image, remove axis, and set colormap to gray
 imagesc(X);
 axis off;
 colormap gray;
