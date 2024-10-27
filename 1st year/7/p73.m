clc
clear all


a=input('Введите значение а ')
b=input('Введите значение b ')
n=input('Введите n ')

A=a+(b-a)*rand(1,n)
disp(max(A))
disp(min(A))
