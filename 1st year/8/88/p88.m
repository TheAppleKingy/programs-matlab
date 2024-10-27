clc
clear all

a=input('Введите а ')
b=input('Введите b ')
n=input('Введите n ')

A=a+(b-a)*rand(n,1)

B=f88(A,n)

disp(B)
