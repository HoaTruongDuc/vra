function Q6(n)
    imgsTrain = loadMNISTImages('train-images.idx3-ubyte');
    lablesTrain = loadMNISTLabels('train-labels.idx1-ubyte');
    imgsTest = loadMNISTImages('t10k-images.idx3-ubyte');
    lablesTest = loadMNISTLabels('t10k-labels.idx1-ubyte');
    
    Mdl = fitcknn(imgsTrain' , lablesTrain);
    img = imgsTest(:, n);
    lblPredictTest = predict(Mdl, img');
    lblImageTest = lablesTest(n);
    
    figure;
    img2D = reshape(img, 28, 28);
    imshow(img2D);
    strLabelGuess = ['Before: ' , num2str(lblImageTest)];
    strLabelGuess = [strLabelGuess, ' Guess: '];
    strLabelGuess = [strLabelGuess, num2str(lblPredictTest), '.'];
    
    if(lblPredictTest == lblImageTest)
        strLabelGuess = [strLabelGuess, ' ==> true.'];
    else
        strLabelGuess = [strLabelGuess, ' ==> false.'];
    end
    title(strLabelGuess);
end