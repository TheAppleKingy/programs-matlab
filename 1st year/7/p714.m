clc
clear all

a=input('Введите значение а ')
b=input('Введите значение b ')
n=input('Введите n ')

A=a=(b-a)*rand(1,n)
disp(A')
q=0;
w=0;
for i=2:4:n-2
  q=A(i);
  w=A(i+2);
  A(i)=w;
  A(i+2)=q;
end

disp(A')
