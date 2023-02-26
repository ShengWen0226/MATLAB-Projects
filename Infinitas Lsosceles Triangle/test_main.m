close all;
clear;
clc;

points = [0,0;1,0;0,1];
n = 5;
points = getPoints(points,n);
print(points,n);