clear all; close all; clc;

% Read an input image
A = imread('binaryImg1.jpg');

% Convert read image to single channel image
A = rgb2gray(A);

% Generate structuring element for processing
se = strel('disk', 15); 

% Perform image opening operation
B_open = imopen(A, se);

% Perform image closing operation
B_close = imclose(A, se);

% Display original and processed images
figure, subplot(1, 3, 1), imshow(A), title('Original image');
subplot(1, 3, 2), imshow(B_open), title('Original image after Opening');
subplot(1, 3, 3), imshow(B_close), title('Original image after Closing');