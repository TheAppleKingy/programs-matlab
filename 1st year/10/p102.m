clc
clear all

a=input('Введите а ')
b=input('Введите b ')
n=input('Введите n ')

X=a+(b-a)*rand(n,1);
for i=1:n
  Y(i)=-(X(i)).^2-X(i)+6;
end

disp(X)
disp(Y)

plot(X,Y)
