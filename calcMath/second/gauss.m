clc 
clear all

A=[1 2 3 4;2 4 6 3;3 6 4 2;4 3 2 1]
b=[16 22 23 14]'
n = length(b);


for j=1:n-1%прямной ход
    for i=j+1:n
        A(i,:)=A(i,:)-A(j,:)*A(i,j)/A(j,j);
    end
end

x=zeros(n,1)%обратный ход
for i=n:-1:1
    x(i)=(b(i)-A(i,:)*x)/A(i,i)
end
