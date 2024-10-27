clc
clear all


a=input('Введите а');
b=input('Введите b');
n=50;
dx=(b-a)/(n-1);

for i=1:n
    X(i)=a+(i-1)*dx;
end
disp(X)

for i=1:n
    Y(i)=exp(X(i));
end
disp(Y)

I=((b-a)/n)*sum(Y);

disp(I)




