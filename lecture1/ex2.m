function ex2()
strMessage='\n Nhap 1 so m:';
m = input(strMessage);
strMessage='\n Nhap 1 so n:';
n=input(strMessage);
a = ones(m,n)
b = zeros(m,n)
c = eye(m,n)
d = randi([-10,10],m,n)
a(1, 1) = 5
e = size(a)
end

