function f=f810(A,n,q)
  m=fix(n/q)
  p=1
  for k=1:n
    for i=p:m
      f(i)=A(i)
    end
    p=m+1
    m=m+q
  end


