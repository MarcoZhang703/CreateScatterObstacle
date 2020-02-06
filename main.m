% +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ %
% Create Obstacles and Convert into Scatters
% Author: Marco Cheung
% 2020-02-04
% +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ %

close all;
clear;
clc;

% input argvs of rectangle and cylinder
rect_x0 = 0; rect_y0 = 0; rect_z0 = 0;
rect_length = 5; rect_width = 3; rect_height = 4;

cylin_x_posi = 3; cylin_y_posi = 5; cylin_z_posi = 2;
cylin_height = 10; cylin_radius = 5;


Rect_Scatter_Saver = DrawRectangle(rect_x0, rect_y0, rect_z0, rect_length, rect_width, rect_height);

Cylin_Scatter_Saver = DrawCylinder(cylin_x_posi,cylin_y_posi,cylin_z_posi,cylin_height,cylin_radius);

