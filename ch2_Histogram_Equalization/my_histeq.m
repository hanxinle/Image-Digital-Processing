A = imread('test1.jpg');

A_gray=rgb2gray(A);

A_histeq = histeq(A_gray);

subplot(2,2,1),imshow(A_gray),title('Original Image');
subplot(2,2,2),imshow(A_histeq),title('He Image');
subplot(2,2,3),imhist(A_gray),title('Histogram of a Gray');
subplot(2,2,4),imhist(A_histeq),title('Histogram of He Image');
