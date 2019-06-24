% 変数をクリア
clear;

% 元画像をグレースケール化
WORKDIR="images/kadai2";
ORG=imread('images/origin/taki.jpg');
ORG = rgb2gray(ORG); colormap(gray);
OutputImagePath = sprintf('%s/%s', WORKDIR, "taki-grayscale.png");
imwrite(ORG, OutputImagePath, 'BitDepth', 16);

% 2階調画像の生成
IMG = ORG>128;
imagesc(IMG); colormap(gray);
OutputImagePath = sprintf('%s/%s', WORKDIR, "taki-step2.png");
IMG=IMG-min(IMG(:)); % shift data such that the smallest element of A is 0 
IMG=IMG/max(IMG(:)); % normalize the shifted data to 1 
imwrite(IMG, OutputImagePath, 'BitDepth', 16);

% 4階調画像の生成
IMG0 = ORG>64;
IMG1 = ORG>128;
IMG2 = ORG>192;
IMG = IMG0 + IMG1 + IMG2;
imagesc(IMG); colormap(gray);
OutputImagePath = sprintf('%s/%s', WORKDIR, "taki-step4.png");
IMG=IMG-min(IMG(:)); % shift data such that the smallest element of A is 0 
IMG=IMG/max(IMG(:)); % normalize the shifted data to 1 
imwrite(IMG, OutputImagePath, 'BitDepth', 16);

% 8階調画像の生成
IMG0 = ORG>32;
IMG1 = ORG>64;
IMG2 = ORG>96;
IMG3 = ORG>128;
IMG4 = ORG>160;
IMG5 = ORG>192;
IMG6 = ORG>224; 
IMG = IMG0 + IMG1 + IMG2 + IMG3 + IMG4 + IMG5 + IMG6;
imagesc(IMG); colormap(gray);
OutputImagePath = sprintf('%s/%s', WORKDIR, "taki-step8.png");
IMG=IMG-min(IMG(:)); % shift data such that the smallest element of A is 0 
IMG=IMG/max(IMG(:)); % normalize the shifted data to 1 
imwrite(IMG, OutputImagePath, 'BitDepth', 16);
