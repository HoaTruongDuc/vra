function Q2(n)
    imgs = loadMNISTImages ('t10k-images.idx3-ubyte');
    labels = loadMNISTLabels ('t10k-labels.idx1-ubyte');
    
	figure;
    img = imgs(:, n);
    img2D = reshape (img, 28, 28);

	%get lable
	strLabelImage = num2str(labels(n));
    strLabelImage = [strLabelImage, '(',num2str(nNumber),')'];
	
	%show image
    imshow(img2D);
    title(strLabelImage);  
end

