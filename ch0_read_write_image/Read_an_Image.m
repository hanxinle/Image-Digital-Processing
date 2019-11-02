clear all; close all; clc;

% Read an image
A = imread('lena.jpg');

% Display the read image
figure, imshow(A);

% Print height, width and number of channels of the read image
height = size(A, 1);
width = size(A, 2);
number_of_channels = size(A, 3);

% Resize the image to 2x and display
B = imresize(A, 2.0);
figure, imshow(B);

% Rotate the image ÄæÊ±ÕëĞı×ª
C = imrotate(A, 90);
figure, imshow(C);