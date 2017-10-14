function Q5(n)
	
    imgsTrain = loadMNISTImages('train-images.idx3-ubyte');
    lablesTrain = loadMNISTLabels('train-labels.idx1-ubyte');
    imgsTest = loadMNISTImages('t10k-images.idx3-ubyte');
	
    Mdl = fitcknn(imgsTrain' , lablesTrain);
    
    img = imgsTest(:, n);
    lblPredictTest = predict(Mdl, img');
    fprintf('With n = %d then it has the result :  %d\n', n, lblPredictTest);
end