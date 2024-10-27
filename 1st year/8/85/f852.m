function sr=f852(A,t,y)
  sr=0
    for i=t:y
      sr=sr+A(i)
   end
  sr=sr/(y-t+1)
  disp(sr)



