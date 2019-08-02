% 課題３　閾値処理
% 閾値を4パターン設定し,閾値処理した画像を示せ．
% 下記はサンプルプログラムである．
% 課題作成にあたっては「Lenna」以外の画像を用いよ．

clear; % 変数のオールクリア

WORKDIR="images/kadai3";
ORG=imread('images/origin/taki.jpg');
ORG= rgb2gray(ORG); % カラー画像を白黒濃淡画像へ変換
IMG = ORG;
OutputImagePath = sprintf('%s/%s', WORKDIR, "taki-grayscale.png");
imwrite(IMG, OutputImagePath, 'BitDepth', 16);

% 輝度値を元に画像を出力
for Kido = [64 96 128 192]
    IMG = ORG > Kido;
    IMG=IMG-min(IMG(:)); % shift data such that the smallest element of A is 0 
    IMG=IMG/max(IMG(:)); % normalize the shifted data to 1 
    OutputImagePath = sprintf('%s/%s%d.png', WORKDIR, "taki-kido", Kido);
    imwrite(IMG, OutputImagePath, 'BitDepth', 16);
end

%
% 課題３　閾値処理
% 閾値を4パターン設定し,閾値処理た画像を示せ．
% 下記はサンプルプログラムである．
% 課題作成にあたっては「Lenna」以外の画像を用いよ．

% clear; % 変数のオールクリア
% 
% ORG=imread('Lenna.png'); % 原画像の入力
% ORG= rgb2gray(ORG); % カラー画像を白黒濃淡画像へ変換
% 
% imagesc(ORG); colormap(gray); colorbar; % 画像の表示
% pause;
% 
% IMG = ORG > 64; % 輝度値が64以上の画素を1，その他を0に変換
% imagesc(IMG); colormap(gray); colorbar;
% pause;
% 
% IMG = ORG > 96;
% imagesc(IMG); colormap(gray); colorbar;
% pause;
% 
% IMG = ORG > 128;
% imagesc(IMG); colormap(gray); colorbar;
% pause;
% 
% IMG = ORG > 192;
% imagesc(IMG); colormap(gray); colorbar
