% +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ %
% Function: DrawCylinder
% Author: Marco Cheung
% 2020-02-04
% +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ %

function saver = DrawCylinder(X_Basic,Y_Basic,Z_Basic,height,radius)
%DRAWCYLINDER Summary of this function goes here
%   Detailed explanation goes here

% Cylinder values
% X_Basic = 3; Y_Basic = 5; Z_Basic = 2;
% height = 10; % height
% radius = 5; % radius
StepLength = 0.2;

t=0:pi/30:2*pi; % Divide the circle into 30 parts.

saver = [];

for r = radius:-StepLength:0
    x = r * sin(t);
    y = r * cos(t);
    z = linspace(Z_Basic, Z_Basic + height, length(t));
    X=meshgrid(x)+X_Basic; Y=meshgrid(y)+Y_Basic; Z=[meshgrid(z)]' + Z_Basic;
    figure(3);
    s1=surf(X,Y,Z);
    saver = [saver;X(:),Y(:),Z(:)];
    hold on;
end


figure(4);
scatter3(saver(:,1),saver(:,2),saver(:,3));
axis([-20 20 -20 20 -20 20]);
end

