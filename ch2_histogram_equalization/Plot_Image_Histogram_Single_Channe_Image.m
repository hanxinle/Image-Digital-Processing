clear all; close all; clc;

% Read an image
A = imread('lena.jpg');
B = imread('lena.jpg');

% Convert the read image to single-channel
A = rgb2gray(A);

% Plot and display the histogram if A is a single channel image with
% default number of bins
figure, subplot(1,3,1),imhist(A), title('Histogram of read image');
        subplot(1,3,2),imshow(A),title('Grayscale image');
        subplot(1,3,3),imshow(B),title('RGB image');