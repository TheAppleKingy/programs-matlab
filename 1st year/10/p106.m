clc
clear all

a=input('Введите а ')
b=input('Введите b ')
n=500

X=a+(b-a)*rand(n,1);
X=sort(X)
for i=1:n
  Y(i)=0.01*X(i).^5-0.005*X(i).^4-0.2371*X(i).^3+0.18125*X(i).^2+0.80145*X(i)-0.47
end

disp(X)
disp(Y)

plot(X,Y)
title('Приданов А.Н, 052203')
xlabel('Ось Х')
ylabel('Ось У')
grid on


