clc
clear all


a=input('Введите а ')
b=input('Введите b ')
n=input('Введите n ')
for x=(a:(b-a)/n:b)
  disp(35*cos(pi*(-2.8-x)/2.4)+7.3*x)
end

