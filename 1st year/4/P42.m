clc
clear all

x=input('Введите х ')
switch x
  case num2cell(-15:0.25:-1)
    g=-8
  case num2cell(1.25:0.25:2.75)
    g=5+3*sin(pi*x)
  case num2cell(3:0.25:6.75)
    g=8-2*sin(pi*(x-5))
  case num2cell(7:0.25:9.75)
    g=-2
  case num2cell(10:0.25:14.75)
    g=3+6*sin(pi*(x-8))
  case num2cell(15:0.25:24)
    g=-6
  otherwise
    disp('При таких значениях х функция не определена')
  end


  disp(g)

