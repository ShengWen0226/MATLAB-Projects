function [y] = calculateY(num,points,x)
%<計算Y座標(水平)>
%輸入(點數量,座標,x值)/輸出(y座標)
i = 2259; %距離1
j = 2965; %距離2
a = 0.1679; %距離1像素尺寸
b = 0.1255; %距離2像素尺寸
for n = 1:num
    y(n) = round((3000-points(2*n,1))*(a+(x(n)-i)*(b-a)/(j-i))); %線性內插
end

end

