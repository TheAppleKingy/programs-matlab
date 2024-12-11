clc 
clear all

A = [1 2 3 4;2 4 6 3;3 6 4 2;4 3 2 1]
b = [16 22 23 14]'
Ab = [A b];

%прямой ход Гаусса
n = length(A); 
for i = 1:n
    %находим максимальный элемент в столбце
    [num, max_row] = max(abs(Ab(i:n, i)));
    max_row = max_row + i - 1;
    
    %меняем строки
    if max_row ~= i
        Ab([i, max_row], :) = Ab([max_row, i], :);
    end
    
    %приводим текущий элемент A(i,i) к 1 и исключаем переменные из других строк
    for j = i+1:n
        Ab(j, :) = Ab(j, :) - Ab(j, i) / Ab(i, i) * Ab(i, :);
    end
end

%обратный ход
x = zeros(n, 1);
x(n) = Ab(n, end) / Ab(n, n);

for i = n-1:-1:1
    x(i) = (Ab(i, end) - Ab(i, 1:n) * x) / Ab(i, i);
end

X=A\b

d=x-X
