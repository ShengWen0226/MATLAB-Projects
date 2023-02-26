function [imgs] = imReader(num)
%<讀取照片>
%輸入張數(num)/輸出圖片組(img)
imgs = cell(2,num);
for n = 1:num
    imgs{1,n} = imread(['left_point_',num2str(n),'.jpg']); %讀取照片
    imgs{2,n} = imread(['right_point_',num2str(n),'.jpg']);
end
    
end

