clc
clear all

n=input('Введите n ')
m=input('Введите m ')

disp('Введите элементы А ')
for i=1:n
  for k=1:m
    A(i,k)=input('');
  end
end
disp(A)

if n~=m
  disp('Определитель не существует')
else
  disp(det(A))
end

