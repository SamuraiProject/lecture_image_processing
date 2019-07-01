# 課題2レポート
標準画像「taki.jpg(図1)」を原画像とする。この画像は縦768画像，横1024画素による長方形のディジタルカラー画像である。本画像を元画像とし、MATLABを用いて画像の階調変換を行い元画像からどのように変化していくかを考察する。

# kadai2.m ８階調のプログラム
```
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
```


# 説明
図1を元画像とし、図2はカラー画像のグレースケール変換である。図3以降は、図1の元画像の入力に対し、2階調化(図３)、4階調化(図4)、8階調化(図5)となっている。

<img src="https://github.com/SamuraiProject/lecture_image_processing/blob/master/images/origin/taki.jpg" width="400"><br />
図1 原画像  

<img src="https://github.com/SamuraiProject/lecture_image_processing/blob/master/images/kadai2/taki-grayscale.png" width="400"><br />
図2 グレースケール  

<img src="https://github.com/SamuraiProject/lecture_image_processing/blob/master/images/kadai2/taki-step2.png" width="400"><br />図3 2階調  

<img src="https://github.com/SamuraiProject/lecture_image_processing/blob/master/images/kadai2/taki-step4.png" width="400"><br />図4 4階調  
  
<img src="https://github.com/SamuraiProject/lecture_image_processing/blob/master/images/kadai2/taki-step8.png" width="400"> <br />図5 8階調

# 考察
元画像を2階調化すると、白黒2値となり、元画像をかなり荒くした画像になる。そこから、４階調、８階調と細分化していくと、グレースケール画像に近くなってくることがわかる。
