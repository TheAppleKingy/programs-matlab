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

n1=input('Введите n1 ')
m1=input('Введите m1 ')

disp('Введите элементы B ')
for i=1:n1
  for k=1:m1
    B(i,k)=input('');
  end
end
disp(B)

if (m~=n1)
  disp('Умножение невозможно')
else
  for i=1:n
    for k=1:m
      C(i,k)=A(i,k)*B(i,k);
    end
  end
end
