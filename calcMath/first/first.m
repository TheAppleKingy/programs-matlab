clc 
clear all

eps=10^-12;
N=5;

for i=0:10*N-1
    
    a=-1+(2*i)/(10*N)%разбиваем исходный отрезок на более мелкие тк корней несколько
    b=-1+(2*(i+1))/(10*N)
    
    while (b-a)>eps%метод дихотомии
        c=(b+a)/2
        if chebyshevT(N,c)*chebyshevT(N,a)<0
            b=c
        else
            a=c 
        end
    end
    x0=(a+b)/2
    
    if abs(chebyshevT(N,a)*chebyshevT(N,b))<eps%проверяем является ли х0 корнем с заданной точностью
        X0(i+1)=x0%если да то добавляем в массив
    else
        X0(i+1)=9%если нет то добавляем 9
    end
end
roots=X0(X0~=9)%вытаскиваем корни

for i=1:N%вычисляем истинные значения корней
    pattern(i)=cos((2*i-1)*pi/(2*N));
end

mistake=abs(abs(roots)-abs(pattern))%ищем отклонение от истинных значений


