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

if (n~=n1) and (m~=m2)
  disp('Сложение невозможно')
else
  for i=1:n
    for k=1:m
      C(i,k)=A(i,k)+B(i,k);
    end
  end
end

disp(C)

