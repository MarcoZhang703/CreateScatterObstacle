% +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ %
% Function: DrawRectangle
% Author: Marco Cheung
% 2020-02-04
% +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ %

function Scatter_Saver = DrawRectangle(x0, y0, z0, length,width,height) 
% x0, y0, z0 means the respective positions of the "basic point" of rect
%DRAW Summary of this function goes here
%   Detailed explanation goes here
% a,b,c means the respective length of x_axle, y_axle, z_axle
% 8 Points to locate a rectangle
verts=[x0 y0 z0;
       x0+length y0 z0;
       x0+length y0+width z0;
       x0 y0+width z0;
       x0 y0 z0+height;
       x0+length y0 z0+height;
       x0+length y0+width z0+height;
       x0 y0+width z0+height];


% Face Number
faces=[1 2 3 4;
       1 2 6 5;
       2 3 7 6;
       3 4 8 7;
       4 1 5 8;
       5 6 7 8];

   
% Draw The Rectangle and Color it.
figure(1);
title('Rectangle_Original');
axis equal;

patch('Faces',faces,'Vertices',verts,'Facecolor','blue');

daspect([1 1 1]);
view(30,30); % Set Display Angle
axis([-20 20 -20 20 -20 20])
grid on;
hold on;


% Covert Rectangle to Scatters
StepLength = 0.2;

X_frac = linspace(x0, x0+length, (length/StepLength)+1);
Y_frac = linspace(y0, y0+width, (width/StepLength)+1);
Z_frac = linspace(z0, z0+height, (height/StepLength)+1);
[X, Y, Z] = meshgrid(X_frac, Y_frac, Z_frac);


% Draw Rectangle Scatter
figure(2);
title('Rectangle_Scatter');

scatter3(X(:),Y(:),Z(:));
Scatter_Saver = [X(:),Y(:),Z(:)];

daspect([1 1 1]);
view(30,30); % Set Display Angle
axis([-20 20 -20 20 -20 20])
grid on;
hold on;
end

