Lena= imread('lena.bmp'); %Actual Image
ref_i=edge(Lena,'canny',0.1,1);% Reference image

%Noise
n1=imnoise(Lena,'gaussian',0,0.01); %variance 0.01 
n2=imnoise(Lena,'gaussian',0,0.05); %variance 0.05
n3=imnoise(Lena,'gaussian',0,0.1); %variance 0.1 
n4=imnoise(Lena,'gaussian',0,0.5); %variance 0.5 
n5=imnoise(Lena,'gaussian',0,1); %variance 1
edge_method=input("methods:\n1.Sobel\n2.Prewitt\n3.Log\n4.Canny\n\n");

switch edge_method
    case 1 % Sobel method
n1_S=edge(n1,"sobel"); %Edge detection with noise1
figure, imshowpair(n1,n1_S,"montage")

n2_S=edge(n2,"sobel"); %Edge detection with noise2
figure, imshowpair(n2,n2_S,"montage")

n3_S=edge(n3,"sobel"); %Edge detection with noise3
figure, imshowpair(n3,n3_S,"montage")

n4_S=edge(n4,"sobel"); %Edge detection with noise4   
figure, imshowpair(n4,n4_S,"montage")

n5_S=edge(n5,"sobel"); %Edge detection with noise5
figure, imshowpair(n5,n5_S,"montage")

    case 2 %Prewitt method

n1_P=edge(n1,"prewitt"); %Edge detection with noise1
figure, imshowpair(n1,n1_P,"montage")

n2_P=edge(n2,"prewitt"); %Edge detection with noise2
figure, imshowpair(n2,n2_P,"montage")

n3_P=edge(n3,"prewitt"); %Edge detection with noise3
figure, imshowpair(n3,n3_P,"montage")

n4_P=edge(n4,"prewitt"); %Edge detection with noise4
figure, imshowpair(n4,n4_P,"montage")

n5_P=edge(n5,"prewitt"); %Edge detection with noise5
figure, imshowpair(n5,n5_P,"montage")

    case 3 %Laplasian of Gaussian Method

n1_log=edge(n1,"log");%Edge detection with noise1
figure, imshowpair(n1,n1_log,"montage")

n2_log=edge(n2,"log");%Edge detection with noise2
figure, imshowpair(n2,n2_log,"montage")

n3_log=edge(n3,"log");%Edge detection with noise3
figure, imshowpair(n3,n3_log,"montage")

n4_log=edge(n4,"log");%Edge detection with noise4
figure, imshowpair(n4,n4_log,"montage")

n5_log=edge(n5,"log");%Edge detection with noise5
figure, imshowpair(n5,n5_log,"montage")

    case 4 % Canny method

n1_C=edge(n1,"canny"); %Edge detection with noise1 
figure, imshowpair(n1,n1_C,"montage")

n2_C=edge(n2,"canny");%Edge detection with noise2
figure, imshowpair(n2,n2_C,"montage")

n3_C=edge(n3,"canny");%Edge detection with noise3
figure, imshowpair(n3,n3_C,"montage")

n4_C=edge(n4,"canny");%Edge detection with noise4
figure, imshowpair(n4,n4_C,"montage")

n5_C=edge(n5,"canny");%Edge detection with noise5
figure, imshowpair(n5,n5_C,"montage")

    otherwise
        fprintf("Error! Press between 1 to 4 please.")
end

