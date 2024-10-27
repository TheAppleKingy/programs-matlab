clc
clear all

a=input('Введите а');
b=input('Введите b');
n=5;
dx=(b-a)/(n-1);

for i=1:n
    X(i)=a+(i-1)*dx;
end
disp(X)

for i=1:n
    Y(i)=-0.1*(X(i)^3)+0.14*(X(i)^2)+1.5*X(i)-1.64;
end
disp(Y)

P=linspace(a,b,800);

for k=1:800
    for i=1:n
        l=1;
        for j=1:n
            if j~=i
                l=l*((P(k)-X(j))/(X(i)-X(j)));
            end
        end
        L(i)=l*Y(i);  
    end
    A(k)=sum(L);
end
disp(A)

for i=1:800
    y(i)=-0.1*(P(i)^3)+0.14*(P(i)^2)+1.5*P(i)-1.64;
end
   
for i=1:800
    u(i)=A(i)-y(i)
end

for i=1:800
    s(i)=(A(i)-y(i))^2;
end

S=(sum(s)/800)^0.5;
disp(S)

plot(X,Y,P,A)



               
             

        


