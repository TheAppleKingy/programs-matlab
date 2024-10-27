clc
clear all


a=input('Введите значение а ')
b=input('Введите значение b ')
n=input('Введите n ')
dx=(b-a)/n;


A=f811(a,n,dx)


disp(max(A))
disp(min(A))

