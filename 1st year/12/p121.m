clc
clear all

f=figure('Position',[100,100,500,500],'Name','11.4,Приданов А.Н,052203')
p=uipanel('title','Значение функции')
b1=uicontrol(f,'position',[0.5 0.5 100 50],'string','Вычислить')
e1=uicontrol(f,'style','edit','string','Введите значение Х','position',[10 60 200 50])
t1=uicontrol(f,'style','text','string','f(x)=...','position',[50 200 50 50])
s=get(e1,'string')
m=str2num(s)
l=2*m
k=num2str(l)
e1=uicontrol(f,'style','edit','string',k,'position',[10 60 200 50])