function ex3()
    strMessage='\n Nhap 1 so n:';
    n = input(strMessage);
    s = 0;
    i = 1;
    while i < n
        s = s + i;
        i = i + 1;
    end
    fprintf('\n Tong S = 1+2+3+...+%d 1a: %d. \n', n, s);
end