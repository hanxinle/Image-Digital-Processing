clear all; close all; clc;

% Read a RGB image
A = imread('test2.jpg');

% Convert the RGB image into HSV image
A_hsv = rgb2hsv(A);

% Perform histogram equalization of V-channel in HSV image which is the 3rd
% channel
A_hsv(:, :, 3) = histeq(A_hsv(:, :, 3));

% Convert back equalized HSV image into RGB image
A_histeq = hsv2rgb(A_hsv);

% Display original and equalized RGB images side by side
figure, subplot(1, 2, 1), imshow(A), title('Original RGB image');
subplot(1, 2, 2), imshow(A_histeq), title('Equalized RGB image');
