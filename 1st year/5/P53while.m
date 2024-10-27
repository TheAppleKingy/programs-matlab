clc
clear all


a=input('Введите а ')
b=input('Введите b ')
dx=input('Введите dx ')
x=a
while (x>=a)&(x<=b)
  disp(9*sin(pi*(x+3.5)/4)+6)
  x=x+dx
end

