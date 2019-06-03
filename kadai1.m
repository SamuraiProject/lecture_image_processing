clear; % �ϐ��̃I�[���N���A

% === �ϐ���錾
OriginalImageDir = 'images/origin/';
OutputImageDir = 'images/kadai1/';
OriginalImageFileName = 'ai-kato';
OriginalImageFileExt = '.jpg';
BoxRate1 = [1,2,4,8,16,32]

% ���摜�̓���
OriginalImagePath = sprintf('%s%s%s', OriginalImageDir, OriginalImageFileName, OriginalImageFileExt);
OriginalImage = imread(OriginalImagePath);
IMG = OriginalImage;

% Boxrate�����ɉ摜���s�N�Z�������ďo��
for BoxRate = [1 2 4 8 16 32]
    OutputImagePath = sprintf('%s%s-box%02d%s', OutputImageDir, OriginalImageFileName, BoxRate, OriginalImageFileExt);
    IMG = imresize(IMG, 0.5); % �摜�̏k��
    IMG2 = imresize(IMG, BoxRate,'box'); % �摜�̊g��
    disp(OutputImagePath);
    imwrite(IMG2, OutputImagePath);
end
msgbox("��������");
