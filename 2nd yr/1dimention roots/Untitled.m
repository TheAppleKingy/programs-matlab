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
    Y(i)=2*X(i)^2+3*X(i)-4;
end
disp(Y)

e=0.001;%точность
%-------------------------------



syms x
y=2*x^2+3*x-4;
yp=diff(y)

xn=b;%первое приближение
yn=2*xn^2+3*xn-4;
ypn=4*xn+3;
xnn=xn-(yn)/(ypn);%второе приближение
while abs(xnn-xn)>e
    xn=xnn;
    xnn=xn-(2*xn^2+3*xn-4)/(4*xn+3);
end

disp(xnn)





