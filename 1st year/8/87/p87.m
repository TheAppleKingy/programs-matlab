clc
clear all

a=input('Введите а ')
b=-a
n=input('Введите n ')

X1=a+(b-a)*rand(n,1)
X2=a+(b-a)*rand(n,1)

F=f87(X1,X2,n)

disp(F)
