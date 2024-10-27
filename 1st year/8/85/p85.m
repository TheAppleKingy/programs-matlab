clc
clear all

a=input('Введите а ')
b=input('Введите b ')
n=input('Введите n ')

A=f851(a,b,n)

t=1
y=floor(n/2)
sr=f852(A,t,y)

t=y+1
y=n
sr=f852(A,t,y)

t=1
y=n
sr=f852(A,t,y)
