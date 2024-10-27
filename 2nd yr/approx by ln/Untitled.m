clc
clear all

a=input('Введите а');
b=input('Введите b');
n=100;
dx=(b-a)/(n-1);

for i=1:n
    X(i)=a+(i-1)*dx;
end
disp(X)

for i=1:n
    Y(i)=20*X(i);
end
disp(Y)

%basis is ln(x)

for i=1:n
    yf(i)=(1/n)*Y(i)*log(X(i));
end



for i=1:n
    f2=(1/n)*(log(X(i)))^2;
end

al=sum(yf)/sum(f2)

for i=1:n
    F(i)=al*log(X(i));
end

plot(X,Y,X,F)
