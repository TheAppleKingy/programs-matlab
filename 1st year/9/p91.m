clc
clear all

n=input('Введите n ')
m=input('Введите m ')

disp('Введите элементы первого массива ')
for i=1:n
  for k=1:m
    A(i,k)=input('');
  end
end
disp(A)

n1=input('Введите n1 ')
m1=input('Введите m1 ')

disp('Введите элементы второго массива ')
for i=1:n1
  for k=1:m1
    B(i,k)=input('');
  end
end
disp(B)

move=input('Выберите действие 1-сложение 2-вычитание 3-умножение 4-транспонирование 5-определитель 6-обратная матрица 7-система линейных уравнений')

switch move
  case 1
    disp(A+B)
  case 2
    disp(A-B)
  case 3
    disp(A*B)
  case 4
    disp(A')
    disp(B')
  case 5
    disp(det(A))
    disp(det(B))
  case 6
    disp(inv(A))
    disp(inv(B))
end




