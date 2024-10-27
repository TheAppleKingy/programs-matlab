clc
clear all


x = input('Введите х ')
if x < -10
  f = 2
elseif (x >= -10)&(x < -5)
  f = x + 5.5
elseif (x >= -5) & (x <= -3)
  f = 0.2*x*x - 2
elseif (x >= 3) & (x<=5)
  f=0.2*x*x+2
elseif (x>5)&(x<=10)
  f=x-5.5
else x>10
  f=2
end


disp(f)




