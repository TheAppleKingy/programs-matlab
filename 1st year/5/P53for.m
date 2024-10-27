clc
clear all


a=input('Введите а ')
b=input('Введите b ')
dx=input('Введите dx ')
for x=(a:dx:b)
  disp(9*sin(pi*(x+3.5)/4)+6)
end

