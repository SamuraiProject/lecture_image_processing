# 課題3レポート
標準画像「taki.jpg(図1)」を原画像とする。この画像は縦768画像，横1024画素による長方形のディジタルカラー画像である。本画像を元画像とし、MATLABを用いて画像の輝度値による閾値処理を行い、考察する。なお、プログラムはループ処理を用いて最適化した。

```
% 輝度値を元に画像を出力
for Kido = [64 96 128 192]
    IMG = ORG > Kido;
    IMG=IMG-min(IMG(:)); % shift data such that the smallest element of A is 0 
    IMG=IMG/max(IMG(:)); % normalize the shifted data to 1 
    OutputImagePath = sprintf('%s/%s%d.png', WORKDIR, "taki-kido", Kido);
    imwrite(IMG, OutputImagePath, 'BitDepth', 16);
end
```
# 説明
<img src="https://github.com/SamuraiProject/lecture_image_processing/blob/master/images/origin/taki.jpg" width="400"><br />
※元画像  

<img src="https://github.com/SamuraiProject/lecture_image_processing/blob/master/images/kadai3/taki-grayscale.png" width="400"><br />
※グレースケール

<img src="https://github.com/SamuraiProject/lecture_image_processing/blob/master/images/kadai3/taki-kido64.png" width="400"><br />
※輝度値64を閾値に2値化

<img src="https://github.com/SamuraiProject/lecture_image_processing/blob/master/images/kadai3/taki-kido96.png" width="400"><br />
※輝度値96を閾値に2値化

<img src="https://github.com/SamuraiProject/lecture_image_processing/blob/master/images/kadai3/taki-kido128.png" width="400"><br />
※輝度値128を閾値に2値化

<img src="https://github.com/SamuraiProject/lecture_image_processing/blob/master/images/kadai3/taki-kido192.png" width="400"><br />
※輝度値192を閾値に2値化

# 考察
閾値の数字を上げていくことで、暗部(黒色部分)が増えていくことがわかる。

