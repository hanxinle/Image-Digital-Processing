clear all; close all; clc;

% Read an input image
A = imread('faces1.jpg');

% Create a cascade detector object
% get facedetector object

faceDetector = vision.CascadeObjectDetector();

% Perform face detection on the input image to get bounding boxes
bbox = step(faceDetector, A);

% Draw the returned bounding box around the detected face
B = insertObjectAnnotation(A, 'rectangle', bbox, 'Face');
figure, imshow(B), title('Detected face');

% Print number of detected faces
str = num2str(size(bbox, 1));
str = strcat('Number of detected faces = ', str);
disp(str);