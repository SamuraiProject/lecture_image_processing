# 課題１レポート（サンプル）

標準画像「ai-kato.jpg」を原画像とする．この画像は縦640画像，横640画素による正方形のディジタルカラー画像である。
なお、サンプルでいただいたmatlabより以下を変更している。

## kadai1.m編集箇所
差分(https://github.com/SamuraiProject/lecture_image_processing/pull/1/files#diff-b3327dde35532a75dd6996bc86736186)
- 変数の定義部と、ロジック部を分割し、可変しやすい構造に変更
- リサイズ&サンプリング化はロジックが似通っていたので、for文にまとめステップ数を削減
- 最終的には、ダウンサンプリング後のファイルが一括で欲しいので、imwriteによりファイルを書き出し
- 処理の完了をmsgboxに通知

## 説明
元画像は以下の通りである。

![原画像](https://github.com/SamuraiProject/lecture_image_processing/blob/master/images/kadai1/ai-kato-box01.jpg)  
図1 原画像

その後は、サンプリングしたい数値を1次元配列(BoxRateを)定義して、以下のように変更後の画像を動的に生成している。

```
% Boxrateを元に画像をボックス化して出力
for BoxRate = [1 2 4 8 16 32]
    % 出力ファイルパス
    OutputImagePath = sprintf('%s%s-box%02d%s', OutputImageDir, OriginalImageFileName, BoxRate, OriginalImageFileExt);
    % 画像の縮小
    IMG = imresize(IMG, ChangeScale);
    % 画像の拡大
    IMG2 = imresize(IMG, BoxRate,'box');
    % デバッグ用のパス表示
    disp(OutputImagePath);
    % ファイルの書き込み
    imwrite(IMG2, OutputImagePath);
end
```

以下にダウンサンプリングした結果画像を示す。


1/2サンプリングの結果を図２に示す．
![原画像](https://github.com/SamuraiProject/lecture_image_processing/blob/master/images/kadai1/ai-kato-box02.jpg)  
図2 1/2サンプリング

1/4サンプリングの結果を図３に示す．
![原画像](https://github.com/SamuraiProject/lecture_image_processing/blob/master/images/kadai1/ai-kato-box04.jpg)  
図3 1/4サンプリング

1/8サンプリングの結果を図4に示す．
![原画像](https://github.com/SamuraiProject/lecture_image_processing/blob/master/images/kadai1/ai-kato-box08.jpg)  
図4 1/8サンプリング

1/16サンプリングの結果を図5に示す．
![原画像](https://github.com/SamuraiProject/lecture_image_processing/blob/master/images/kadai1/ai-kato-box16.jpg)  
図5 1/16サンプリング

1/32サンプリングの結果を図6に示す．
![原画像](https://github.com/SamuraiProject/lecture_image_processing/blob/master/images/kadai1/ai-kato-box32.jpg)  
図6 1/32サンプリング

このようにサンプリング幅が大きくなると，モザイク状のサンプリング歪みが発生する．
