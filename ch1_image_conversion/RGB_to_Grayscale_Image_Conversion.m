clear all; close all; clc;

% Read a RGB image
A = imread('lena.jpg');

% Verify number of channels
number_of_channels = size(A, 3)

% Convert RGB image to Grayscale
A_gray = rgb2gray(A);
number_of_channels2 = size(A_gray, 3)
% Display the conversion result
% subplot(m,n,p) m行*n列个图片显示在同一个平面，这个图片的顺序是p

% subplot(2,2,1); % 2、2、1之间没有逗号也可以
% 在第一块绘图
% subplot(2,2,2);
% 在第二块绘图
% subplot(2,2,3);
% 在第三块绘图
% subplot(2,2,4);
% 在第四块绘图


figure, subplot(1, 2, 1), imshow(A), title('Input RGB image');
subplot(1, 2, 2), imshow(A_gray), title('Converted Grayscale image');