clear all; close all; clc;

% Read an image
A = imread('lena.jpg');

% Translate the image
A_trans = imtranslate(A, [5 15]);

% Write the transformed image to disk
imwrite(A_trans, 'newlena.jpg');

figure,imshow(A_trans);