clc
clear all


a=input('Введите значение а ')
b=input('Введите значение b ')
n=input('Введите n ')

A=a+(b-a)*rand(1,n)
m=0
for i=1:n
  m=m+A(i)
end
M=m/n


disp(M)
disp(std(A,1))
