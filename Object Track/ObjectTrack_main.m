close all; %關閉所有視窗
clear; %清除變數
clc; %清除命令視窗
%% 基本設定
camR = [0,0,884]; %右相機位置
camL = [0,676,884]; %左相機位置
num = 3; %追蹤點數量
%% 讀取照片
imgs = imReader(num);
%% 取得座標
points = cat(1,cat(1,findPoint(imgs{1,1})),cat(1,findPoint(imgs{2,1}))); %合併座標矩陣
for n = 2:num
    for m = 1:2
        points = cat(1,points,cat(1,findPoint(imgs{m,n}))); %合併座標矩陣
    end
end
%% 標記照片
printPointOnImg(imgs,points,num);
%% X座標計算
x = calculateX(num,points);
%% Y座標計算
y = calculateY(num,points,x);
%% Z座標計算
z = calculateZ(num,points,x);
%% 繪製座標圖
drawPonts(num,camL,camR,x,y,z);