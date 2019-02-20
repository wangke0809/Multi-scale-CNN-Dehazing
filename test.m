clear;close all; clc;
addpath(genpath('.'));

run(fullfile(fileparts(mfilename('fullpath')), './matlab/vl_setupnn.m')) ;

path = 'E:/sipl/¿ÓºŒ∑Ê/data/';
dehaze_path = 'E:/sipl/¿ÓºŒ∑Ê/4/';

l = dir(path);

for i = 1 : length(l)
    l(i).name
    if l(i).name == '.'
        continue
    end
    gamma = 1;
    tic
    dehazedImageRGB = mscnndehazing([path, l(i).name], gamma);
    toc
    imwrite(dehazedImageRGB, [dehaze_path, l(i).name]);
end