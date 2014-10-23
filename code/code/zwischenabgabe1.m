clear;
getImageLists;

for i=1:numel(trainImageList) 
    fileBG   = strrep(trainImageList{i}, 'training', 'training-bg');
    fileBG   = strrep(fileBG, 'test', 'test-BG'); 
    fileCROP = strrep(trainImageList{i}, 'training', 'training-crop');
    fileCROP = strrep(fileCROP, 'test', 'test-crop');
    if(exist(fileCROP,'file')==0)
        I  = imread(trainImageList{i});
        p  = mark(I);
        I2 = projectiveCrop(I,p);
        B  = backgroundSubtraction(I2); 
        imwrite(I2, fileCROP); 
        imwrite(B, fileBG);
    elseif(exist(fileCROP,'file')==0)
        I2 = imread(fileCROP);
        B  = backgroundSubtraction(I2); 
        imwrite(B, fileBG); 
    end
end

saveLists('./list/',trainImageList);

