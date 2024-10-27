clc
clear all


a=input('Введите значение а ')
b=input('Введите значение b ')
n=input('Введите n ')
z=input('Введите z ')

A=a+(b-a)*rand(1,n)

s=0;
s1=0;
s2=0;

for i=1:n
  if A(i)>z
    s=s+1;
  end
  if A(i)<z
    s1=s1+1;
  end
  if (A(i)-fix(A(i)))<0.5
    s2=s2+1;
  end
end

disp('s=')
disp(s)
disp('s1=')
disp(s1)
disp('s2=')
disp(s2)


