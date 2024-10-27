clc
clear all


n=input('Введите n')
for k=1:n
  A(k)=input('')
end


s1=0;
s2=0;
s=0;
q=12;
for i=1:n
  s=s+A(i);
  if mod(i,q)==0
    s1=s1+A(i);
  end
  if mod(round(A(i)),2)==0
    s2=s2+A(i);
  end
end


disp('s=')
disp(s)
disp('s1=')
disp(s1)
disp('s2=')
disp(s2)


