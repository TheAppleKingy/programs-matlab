clc
clear all

n=input('Введите n ')
m=input('Введите m ')

if n~=m
  disp('Ошибка')
else
disp('Введите элементы матрицы коэффициентов А ')
for i=1:n
  for k=1:m
    A(i,k)=input('');
  end
end
disp(A)

disp('Введите матрицу свободных членов')
for i=1:n
  B(i)=input('');
end
B=B';
disp(B)

disp('Столбец неизвествных имеет вид ')
disp(inv(A)*B)


end
