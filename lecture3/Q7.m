function Q7(n)
    imgsTrain = loadMNISTImages('train-images.idx3-ubyte');
    lablesTrain = loadMNISTLabels('train-labels.idx1-ubyte');
  
    imgsTest = loadMNISTImages('t10k-images.idx3-ubyte');
    lablesTest = loadMNISTLabels('t10k-labels.idx1-ubyte');
   
    Mdl = fitcknn(imgsTrain', lablesTrain);
   
    sizeOfLabel = size(lablesTest, 1);
    results = 0;

    for i=1:sizeOfLabel
        if(lablesTest(i) == n)
            img = imgsTest(:, i);
            if(predict(Mdl, img') ~= lablesTest(i))
                results = results + 1;
            end
        end
    end
    fprintf('The lable %d has number of wrong : %d\n', n, results);
end