function A=f811(a,n,dx)
  for i=1:n
    A(i)=(30/(1+(a+1)^2))+(10/(0.2+(a-3)^2))-10;
    a=a+dx;
end


