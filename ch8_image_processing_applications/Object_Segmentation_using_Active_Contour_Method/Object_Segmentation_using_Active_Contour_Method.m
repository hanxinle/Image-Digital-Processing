%% REQUIRES MATLAB 2013 OR HIGHER %%

clear all; close all; clc;

% Read an input image
A = imread('coins1.jpg');

% Convert the image to grayscale
A = rgb2gray(A);

% Generate mask for active contour initialization
mask = zeros(size(A));
mask(5:end-5,5:end-5) = 1;

% Segment the image using active contour method
bw = activecontour(A, mask, 300);

% Display original and segmented images
figure, subplot(1, 2, 1), imshow(A), title('Original image');
subplot(1, 2, 2), imshow(bw), title('Segmented image');