function results = Q3_4(type, fileName)
    if strcmp(type, 'test')
        imgs = loadMNISTImages ('t10k-images.idx3-ubyte');
        lables = loadMNISTLabels ('t10k-labels.idx1-ubyte');
    elseif strcmp(type, 'train')
        imgs = loadMNISTImages ('train-images.idx3-ubyte');
        lables = loadMNISTLabels ('train-labels.idx1-ubyte');
    else
        throw('type is "train" or "test"');
    end
    sizeImgs = size(imgs,2);
    count = zeros(10,1);
    results = zeros(2, 10);
    for i = 1:sizeImgs
        label = lables(i) + 1;
        count(label,1) = count(label,1) + 1;
        results(1, label) = label;
        results(2, label) = results(2, label) + 1;
    end
    
    %export csv
    csvwrite(fileName,results);
end