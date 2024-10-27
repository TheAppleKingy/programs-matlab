clc
clear all


a=input('Введите значение а ')
b=input('Введите значение b ')
n=input('Введите n ')
dx=(b-a)/n

for i=1:n
  A(i)=(30/(1+(a+1)^2))+(10/(0.2+(a-3)^2))-10
  a=a+dx
end

disp(max(A))
disp(min(A))




