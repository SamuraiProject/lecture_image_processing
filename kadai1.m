% �ϐ��̃I�[���N���A
clear;

% �ϐ���錾
OriginalImageDir = 'images/origin/';
OutputImageDir = 'images/kadai1/';
OriginalImageFileName = 'ai-kato';
OriginalImageFileExt = '.jpg';
ChangeScale = 0.5;

% ���摜�̓���
OriginalImagePath = sprintf('%s%s%s', OriginalImageDir, OriginalImageFileName, OriginalImageFileExt);
OriginalImage = imread(OriginalImagePath);
IMG = OriginalImage;

% Boxrate�����ɉ摜���{�b�N�X�����ďo��
for BoxRate = [1 2 4 8 16 32]
    OutputImagePath = sprintf('%s%s-box%02d%s', OutputImageDir, OriginalImageFileName, BoxRate, OriginalImageFileExt);
    IMG = imresize(IMG, ChangeScale); % �摜�̏k��
    IMG2 = imresize(IMG, BoxRate,'box'); % �摜�̊g��
    disp(OutputImagePath);
    imwrite(IMG2, OutputImagePath);
end

msgbox("��������");
