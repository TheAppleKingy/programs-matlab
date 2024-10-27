clc
clear all

a=input('Введите а ')
b=input('Введите b ')
n=input('Введите n ')

dx=(b-a)/n

X=a:dx:b

for i=1:n
  f1(i)=-(X(i)).^2+X(i)+4
  f2(i)=6*cos(X(i))
end

plot(f1,f2)
