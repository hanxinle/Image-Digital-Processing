clear all; close all; clc;

% Read a RGB image
A = imread('lena.jpg');

% Verify number of channels
number_of_channels = size(A, 3)

% Convert RGB image to Grayscale
A_gray = rgb2gray(A);
number_of_channels2 = size(A_gray, 3)
% Display the conversion result
% subplot(m,n,p) m��*n�и�ͼƬ��ʾ��ͬһ��ƽ�棬���ͼƬ��˳����p

% subplot(2,2,1); % 2��2��1֮��û�ж���Ҳ����
% �ڵ�һ���ͼ
% subplot(2,2,2);
% �ڵڶ����ͼ
% subplot(2,2,3);
% �ڵ������ͼ
% subplot(2,2,4);
% �ڵ��Ŀ��ͼ


figure, subplot(1, 2, 1), imshow(A), title('Input RGB image');
subplot(1, 2, 2), imshow(A_gray), title('Converted Grayscale image');