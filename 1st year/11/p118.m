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
  f1(i)=22.5*exp(-0.3*(X(i)+1.5).^2)+0.8*sin(2.2*X(i))+0.4*X(i)
  f2(i)=5.8*sin(5-X(i))+2
end

mi=0
if min(f1)<min(f2)
  mi=min(f1)
else
  mi=min(f2)
end

ma=0
if max(f1)>max(f2)
  ma=max(f1)
else
  ma=max(f2)
end
%--------------------------------------------
f=figure('Position',[100,100,1420,680],'Name','11.4,Приданов А.Н,052203')
h=axes
set(h,'Position',[0.06,0.06,0.85,0.85],'FontSize',[14])

plot(X,f2,X,f1)
axis([a b mi ma])
xlabel('Ось Х')
ylabel('Ось Y')
title('График двух функций')
xticks(a:lx:b)
yticks(mi:ly:ma)
grid on