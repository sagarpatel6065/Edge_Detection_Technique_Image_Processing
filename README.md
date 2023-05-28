# Edge_Detection_Technique_Image_Processing
Step 1 - run the mainfile.m first and select all the options one by one.
step 2 - for RMSE value run rmse.m file.

mainfile.m
The provided code demonstrates the implementation of different edge detection techniques on a noisy image using MATLAB. Here's an explanation of the code:

1. The code starts by loading the image "lena.bmp" using the `imread` function and assigns it to the variable `Lena`. This serves as the original image for comparison.

2. The next step involves generating reference edges using the Canny edge detection algorithm on the original image. The `edge` function is used with the 'canny' method and parameters for thresholding, resulting in the variable `ref_i` containing the reference edge map.

3. The code then introduces different levels of noise to the original image using the `imnoise` function. Five noisy versions of the Lena image are created, each with a different variance for Gaussian noise.

4. The user is prompted to select an edge detection method by inputting a number corresponding to the desired method: Sobel (1), Prewitt (2), Laplacian of Gaussian (3), or Canny (4).

5. A switch-case statement is used to execute the chosen edge detection method on each noisy image:

- For each case, the chosen method is applied to the noisy image using the `edge` function, and the resulting edge map is assigned to a respective variable (`n1_S`, `n2_S`, `n3_S`, etc.).
- `imshowpair` is then used to display a montage of the original noisy image (`n1`, `n2`, `n3`, etc.) alongside its corresponding edge map (`n1_S`, `n2_S`, `n3_S`, etc.).

6. The code handles all four edge detection methods (Sobel, Prewitt, Laplacian of Gaussian, and Canny) in separate cases within the switch statement.

7. If the user enters a number other than 1, 2, 3, or 4, an error message is displayed.

The code allows for easy comparison between different edge detection methods and their performance on noisy images, providing visual insights into the effectiveness of each technique.

Please note that to execute this code successfully, you need to have the MATLAB Image Processing Toolbox installed and ensure the image file "lena.bmp" is in the current working directory.

---------------------------------------

The provided code calculates the root mean square (RMSE) values between a reference signal `a1` and several other signals `a2` to `a9`. Here's an explanation of the code:

1. The code calculates the RMSE between the reference signal `a1` and each of the other signals `a2` to `a9`. The formula used to calculate RMSE is:

   `RMSE = sqrt(mean((a1(:) - aX(:)).^2))`

   - `aX` represents one of the other signals (`a2` to `a9`).
   - `(:)` notation converts the matrices `a1` and `aX` into column vectors to perform element-wise subtraction.
   - `(a1(:) - aX(:))` calculates the difference between corresponding elements of the vectors.
   - `.^2` squares each element of the difference vector.
   - `mean` calculates the average of the squared differences.
   - `sqrt` takes the square root of the mean squared differences, yielding the RMSE.

2. The code assigns the calculated RMSE values to variables `rm1` to `rm8`, respectively. Each `rmX` represents the RMSE value between `a1` and `aX` (where `X` ranges from 1 to 8).

3. The code creates an array `rm` that concatenates all the RMSE values together using the semicolon (`;`) notation. This results in a column vector `rm` containing the RMSE values for all comparisons.

The purpose of this code snippet is to quantitatively measure the dissimilarity between the reference signal `a1` and the other signals `a2` to `a9`. The RMSE provides a numerical indication of the differences between the signals, with higher values indicating larger dissimilarities.

Please note that the values of `a1` to `a9` are not provided in the code snippet, so it is assumed that they are defined elsewhere in the program.

-----------------------------------------------
abc.m
The provided code segment demonstrates the application of the Canny edge detection algorithm on the Lena image with different threshold values. Here's an explanation of the code:

1. The code starts by loading the image "lena.bmp" using the `imread` function and assigns it to the variable `Lena`.

2. The original Lena image is displayed using the `imshow` function.

3. The Canny edge detection algorithm is applied multiple times with different threshold values using the `edge` function. The result of each edge detection is stored in variables `a1` to `a9` (corresponding to different threshold values).

4. For each edge detection result, a new figure is created using the `figure` function, and the `subplot` function is used to arrange the figures in a 2x3 grid.

5. The `imshow` function is called to display each edge detection result (`a1` to `a9`) in separate subplots. The `title` function is used to label each subplot with the corresponding variable name (`a1` to `a9`).

The purpose of this code is to visualize the effects of different threshold values on the Canny edge detection results for the Lena image. By varying the threshold parameter, the sensitivity of the edge detection algorithm can be adjusted, resulting in different edge maps with varying levels of edge detection.

Note: The code snippet provided displays nine subplots, each showing a different edge detection result using different threshold values. The figures are arranged in a 2x3 grid for visualization purposes.
