clc
clear all

a=input('Введите а ')
b=input('Введите b ')
lx=input('Введите длину деления оси X ')
ly=input('Введите длину деления оси Y ')
n=500

dx=(b-a)/n

X=a:dx:b

for i=1:n+1
  f1(i)=-(X(i)).^2+X(i)+4
  f2(i)=6*cos(X(i))
end

f=figure('Position',[100,100,1720,880],'Name','11.4,Приданов А.Н,052203')
h=axes
set(h,'Position',[0.06,0.06,0.85,0.85],'FontSize',[14])

plot(X,f2,X,f1)
axis([-10 10 -10 10])
xlabel('Ось Х')
ylabel('Ось Y')
title('График двух функций')
yticks(-10:lx:10)
xticks(-10:ly:10)
