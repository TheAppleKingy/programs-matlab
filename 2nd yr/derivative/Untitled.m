clc
clear all

a=input('Введите а');
b=input('Введите b');
n=500;
dx=(b-a)/(n-1);

for i=1:n
    X(i)=a+(i-1)*dx;
end
disp(X)

for i=1:n
    Y(i)=sin(2*X(i));
end
disp(Y)

for i=2:n
    D(i)=(Y(i)-Y(i-1))/dx;
end

for i=1:n
    P(i)=2*cos(2*X(i));
end
h=P-D;
plot(X,P,X,D,X,h)
grid on

    
    
    
    
    
    
    
    
    