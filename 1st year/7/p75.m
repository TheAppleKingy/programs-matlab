clc
clear all



n=input('Введите n ')
a=input('Введите a ')
b=input('Введите b ')

for i=1:n
  A(i)=input('');
end

k=(b-a)/(max(A)-min(A))
l=b-k*max(A)

for i=1:n
  S(i)=k*A(i)+l
end

disp(A')
disp(S')






