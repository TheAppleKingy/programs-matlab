clc
clear all

a=input('Введите а ')
b=input('Введите b ')
n=500

dx=(b-a)/n

X=a:dx:b

for i=1:n+1
  f1(i)=-(X(i)).^2+X(i)+4
  f2(i)=6*cos(X(i))
end

f=figure('Position',[70,70,1420,680],'Name','11.4,Приданов А.Н,052203')
h=axes
set(h,'Position',[0.06,0.06,0.85,0.85],'FontSize',[14])

plot(X,f2,X,f1)

