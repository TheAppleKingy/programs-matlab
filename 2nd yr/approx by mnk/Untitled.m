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

p=input('Введите степень полинома ');

%матрица коэффициентов
z=p;
for i=1:(p+1)
    for k=1:(p+1)
        R(i,k)=sum(X.^z);
        z=z-1;
    end
    z=p+i;
end
R=fliplr(R);
disp(R);
%теперь столбец свободных членов

for k=1:p+1
    for i=1:n
        x(k,i)=X(i)^(k-1);
    end
end
disp(x)

yx=x.*Y;

disp(yx);

yx=sum(yx,2);
disp(yx);
    
%находим искомые коэффициенты
A=inv(R)*yx;
A=A';
A=fliplr(A);
disp(A);

%находим значения аппроксимирующего полинома
for k=1:(p+1)
    for i=1:n
        x1(k,i)=X(i)^(k-1);
    end
end

x1=flipud(x1);
disp(x1);  %матрица полиномов без кефов(1 столбик 1 полином)

for k=1:(p+1)
    for i=1:n
        F(k,i)=x1(k,i)*A(k);
    end
end

F=sum(F);
disp(F);

plot(X,Y,X,F)
















