function A=f861(a,b,n)
  dx=(b-a)/n
  x=a
  for i=1:n+1
    A(i)=(5.8-0.3*x)*sin(5-x)-4
    x=x+dx
  end

