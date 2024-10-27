function S=f832(a,b,A,n)
  k=(b-a)/(max(A)-min(A))
  l=b-k*max(A)

  for i=1:n
    S(i)=k*A(i)+l
  end
