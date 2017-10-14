function Q8S()
    imgsTrain = loadMNISTImages('./train-images.idx3-ubyte');
    lablesTrain = loadMNISTLabels('./train-labels.idx1-ubyte');
    imgsTest = loadMNISTImages('./t10k-images.idx3-ubyte');
    lablesTest = loadMNISTLabels('./t10k-labels.idx1-ubyte');
	
    %NumNeighbors
    k = 5;
    %'Distance','minkowski'
    d = 'minkowski';
    Mdl = fitcknn(imgsTrain' , lablesTrain, 'NumNeighbors', k, 'Distance', d);
    
    lablesResult = predict(Mdl, imgsTest');
	result = (lablesResult == lablesTest);
	count = sum(result);

    acc = (count * 100) / size(imgsTest, 2);
    fprintf('accuracy : %d \n', acc);
end