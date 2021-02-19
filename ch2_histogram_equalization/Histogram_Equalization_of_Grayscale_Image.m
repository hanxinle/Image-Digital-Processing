clear all; close all; clc;

% Read an image
A = imread('test1.jpg');

% Convert the image to single channel image
A = rgb2gray(A);

% Equalize the histogram of read single channel image
A_histeq = histeq(A);

% Display original and equalized images side by side with their respective
% histogram plots
figure, subplot(2, 2, 1), imshow(A), title('Original Image');
subplot(2, 2, 2), imshow(A_histeq), title('Equalized Image');
subplot(2, 2, 3), imhist(A), title('Histogram of Original Image');
subplot(2, 2, 4), imhist(A_histeq), title('Histogram of Equalized Image');