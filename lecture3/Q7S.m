function Q7S()
    imgsTrain = loadMNISTImages('train-images.idx3-ubyte');
    lablesTrain = loadMNISTLabels('train-labels.idx1-ubyte');
  
    imgsTest = loadMNISTImages('t10k-images.idx3-ubyte');
    lablesTest = loadMNISTLabels('t10k-labels.idx1-ubyte');
   
    Mdl = fitcknn(imgsTrain', lablesTrain);
	
	mx = zeros(10, 10);
    lblImage = unique(lablesTest);
    
    for i = 1:numel(lblImage)
        n = lblImage(i);
		
        ind = find(lablesTest==n);
        for idx = 1:numel(ind)
            nNumber = ind(idx);
            img = imgsTest(:, nNumber);
            lblPredictTest = predict(Mdl, img');
			
            mx(n + 1, lblPredictTest + 1) = mx(n + 1, lblPredictTest + 1) + 1;
        end
    end
	%write csv
    csvwrite('ConfusionMatrix.csv', mx);
end