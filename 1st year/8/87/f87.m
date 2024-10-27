function F=f87(X1,X2,n)
  for i=1:n
    f1(i)=5*exp(-0.3*X1(i))-4
    f2(i)=2*sin(0.8*X2(i))
  end

  F=f1+f2

