# 課題9レポート
標準画像「pikachu.jpg(図1)」を原画像とする。この画像は縦1000画像，横1000画素による長方形のディジタルカラー画像である。本画像を元画像とし、MATLABを用いて、ノイズの添付や除去を検証する

# 説明
<img src="https://github.com/SamuraiProject/lecture_image_processing/blob/master/images/origin/pikachu.jpg" width="800"><br />
図1 原画像 

<img src="https://github.com/SamuraiProject/lecture_image_processing/blob/master/images/kadai9/pika-gs.png" width="800"><br />
図2 グレースケール

<img src="https://github.com/SamuraiProject/lecture_image_processing/blob/master/images/kadai9/pika-noise.png" width="800"><br />
図3 salt & pepperによるノイズ添付


<img src="https://github.com/SamuraiProject/lecture_image_processing/blob/master/images/kadai9/pika-remove-noise.png" width="800"><br />
図4 平滑化フィルタで雑音除去


<img src="https://github.com/SamuraiProject/lecture_image_processing/blob/master/images/kadai9/pika-remove-noise-median.png" width="800"><br />
図5 メディアンフィルタで雑音除去

<img src="https://github.com/SamuraiProject/lecture_image_processing/blob/master/images/kadai9/pika-filter.png" width="800"><br />
図6 フィルタの適用

# 考察
平滑化フィルタでのノイズ除去は効果が薄く、メディアンフィルタでの雑音除去は非常にクリアに除去できていることが伺える
