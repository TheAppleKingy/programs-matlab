clc
clear all

a=input('Введите а');
b=input('Введите b');
n=20;
dx=(b-a)/(n-1);

for i=1:n
    X(i)=a+(i-1)*dx;
end
disp(X)

for i=1:n
    Y(i)=0.05*X(i)^4+0.01*X(i)^3-1.4325*X(i)^2-0.5125*X(i)+5.875+4.5*cos(X(i)*pi);
end
disp(Y)

P=linspace(a,b,800);


for i=1:n
    for j=1:n
        A(i,j)=X(i)^(j-1);   %матрица коэфициентов системы уравнений
    end
end
disp(A)

C=inv(A)*Y';
disp(C)

for k=1:length(P)
    t=0;
    for i=1:n
        L(k)=t+C(i)*P(k)^(i-1);
        t=L(k);
    end
end



for i=1:800
    y(i)=0.05*P(i)^4+0.01*P(i)^3-1.4325*P(i)^2-0.5125*P(i)+5.875+4.5*cos(P(i)*pi);
end

for i=1:800
    u(i)=L(i)-y(i);
end

for i=1:800
    s(i)=(L(i)-y(i))^2;
end
S=(sum(s)/800)^0.5;
disp(S)

plot(P,u)


    


