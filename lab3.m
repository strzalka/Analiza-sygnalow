%%%%% NARYSOWAĆ WŁASNY OBRAZEK !!!! %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% W PAINTCIE!!!!!
im=imread('figury2.BMP');
%imshow(im);
im=im2double(im);


%g = fspecial('average',3);   % biggish Laplacian of Gaussian mask
%im1 = conv2(im, g, 'same');
%imshow(im1);

im2=medfilt2(im);
imshow(im2);

%im3=double(colfilt(im,[5 5],'sliding',@mean));
%mshow(im3);

%imhist(im2);

prog_bin=0.91;
prog=105;
im4=im2>prog_bin;
imshow(im4);
im4=~im4;
imshow(im4);
hold on;
im5=bwlabel(im4);


feats=regionprops(im5,'all');

for i=1:13
x(i)=feats(i).Centroid(1,1);
y(i)=feats(i).Centroid(1,2);

plot(x,y,'bp');
centroids = cat(1, feats.Centroid);

wsp_kier=sin(feats(i).Orientation*2*pi/360);
prosta(i).prosta_x = (centroids(i,1)-50:0.1:centroids(i,1)+50);
prosta(i).prosta_y = zeros(size(prosta_x));
    for z=1:length(prosta_x)
    prosta(i).prosta_y(z) = -wsp_kier*(prosta(i).prosta_x(z)-centroids(i,1))+centroids(i,2);
    end
plot(prosta(i).prosta_x,prosta(i).prosta_y,'r');
end

