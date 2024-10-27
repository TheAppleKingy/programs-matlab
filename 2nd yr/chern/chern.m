clc
clear all


a=input('Введите а');
b=input('Введите b');
n=2;
dx=(b-a)/(n-1);

X=[0,pi]

for i=1:n
    Y(i)=sin(X(i));
end
disp(Y)

syms x
y=(x^2-1)^n
Pn=((1/2^n)/factorial(n))*diff(y,n)
kef=sym2poly(Pn)
PRn=diff(Pn)
nuls=roots(kef)   %корни полинома

t=subs(PRn,x,nuls)


    
    
    
    
    
    
    
