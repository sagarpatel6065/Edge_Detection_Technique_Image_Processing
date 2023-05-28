Lena = imread('lena.bmp');%image
imshow(Lena);%display image

a1=edge(Lena,'canny',0.1,1);figure;subplot(2,3,1);imshow(a1);title('a1');
a2=edge(Lena,'canny',0.2,1);figure;subplot(2,3,2);imshow(a2);title('a2');
a3=edge(Lena,'canny',0.3,1);figure;subplot(2,3,3);imshow(a3);title('a3');
a4=edge(Lena,'canny',0.4,1);figure;subplot(2,3,4);imshow(a4);title('a4');
a5=edge(Lena,'canny',0.5,1);figure;subplot(2,3,5);imshow(a5);title('a5');
a6=edge(Lena,'canny',0.6,1);figure;subplot(2,3,6);imshow(a6);title('a6');
a7=edge(Lena,'canny',0.7,1);figure;subplot(2,3,7);imshow(a7);title('a7');
a8=edge(Lena,'canny',0.8,1);figure;subplot(2,3,8);imshow(a8);title('a8');
a9=edge(Lena,'canny',0.9,1);figure;subplot(2,3,9);imshow(a9);title('a9');
