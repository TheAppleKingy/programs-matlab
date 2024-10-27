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

h=dx;
for i=2:n
    I(i)=((Y(i)+Y(i-1))/2)*h;
end


sum(I)




    
    
    
    
    
    
    