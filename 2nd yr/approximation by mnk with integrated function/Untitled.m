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
    Y(i)=sin(X(i));
end
disp(Y)

ap=polyfit(X,Y,5)

for i=1:n
    y(i)=ap(1)*X(i)^5+ap(2)*X(i)^4+ap(3)*X(i)^3+ap(4)*X(i)^2+ap(5)*X(i)+ap(6);
end

plot(X,y,X,Y)




