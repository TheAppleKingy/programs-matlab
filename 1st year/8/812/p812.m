clc
clear all

a=input('Введите а ')
b=a
a=-a
n=input('Введите n ')

A=a+(b-a)*rand(n,1)
B=f812(A,n)

disp(B)
