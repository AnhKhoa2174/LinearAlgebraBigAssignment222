% Read the image file
    A = imread('fig6.png');

    % Convert the RGB image to grayscale and cast it to double precision
    X = double(rgb2gray(A));

    % Get the dimensions of the grayscale image
    nx = size(X, 1);
    ny = size(X, 2);

    % Display the grayscale image, remove axis, and set colormap to gray
    imagesc(X);
    axis off;
    colormap gray;
    [U,S,V] = svd(X);
    for r = [5 20 100 1500] % Truncation value
    Xapprox = U(:, 1:r) * S(1:r, 1:r) * V(:, 1:r).'; % Approx. image

    % Display the approximated image and set title
    figure, imagesc(Xapprox), axis off;
    colormap gray;
    title(['r=', num2str(r, '%d')]);
    end   
