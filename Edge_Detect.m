orig = imread('nature.jpg');
I = im2gray(orig);

BW1 = edge(I,'Canny');
BW4 = edge(I,'Sobel');
BW2 = edge(I,'Prewitt');
BW3 = edge(I,'Roberts');


figure1 = figure;
subplot(2,2,1); imshow(BW1);title "Canny";
subplot(2,2,2); imshow(BW4);title "Sobel";
subplot(2,2,3); imshow(BW2);title "Prewitt";
subplot(2,2,4); imshow(BW3);title "Roberts";
saveas(figure1,'edges');

figure2 = figure;
imshow(orig);title "Original";
saveas(figure2,'nature_orig');