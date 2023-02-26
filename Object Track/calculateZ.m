function [z] = calculateZ(num,points,x)
%<計算Z座標(垂直)>
%輸入(點數量,座標,x值)/輸出(z座標)
i = 2259; %距離1
j = 2965; %距離2
k = 884; %相機高度
a = 0.1663; %距離1像素尺寸
b = 0.1233; %距離2像素尺寸
for n = 1:num
    z(n) = k+round((2000-points(2*n,2))*(a+(x(n)-i)*(b-a)/(j-i))); %線性內插
end

end

