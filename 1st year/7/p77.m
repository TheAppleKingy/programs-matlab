clc
clear all


a=input('Введите значение а ')
b=input('Введите значение b ')
n=input('Введите n ')

A=a+(b-a)*rand(1,n)
Q=2

for i=1:n
  if mod(i,Q)~=0
    A(i)=[]
  end

end

disp(A)

