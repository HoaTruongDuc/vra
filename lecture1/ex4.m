function ex4()
    strMessage = '\n Nhap 1 so n: ';
    n = input(strMessage);
    s = 0;
    for i = 1:n
        s = s + i;
    end
    fprintf('\n Tong S = 1 + 2 + 3 +...+ %d la: %d.\n', n, s);
end