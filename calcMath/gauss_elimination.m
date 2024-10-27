function x = gauss_elimination(A, b)
    % Проверка, что размеры матрицы A и вектора b подходят
    [m, n] = size(A);
    if m ~= n || length(b) ~= m
        error('Размеры матрицы A и вектора b неверны.');
    end
    
    % Объединяем матрицу A и вектор b в расширенную матрицу
    Ab = [A b];
    
    % Прямой ход Гаусса
    for k = 1:n-1
        % Обнаружение максимального элемента для улучшения устойчивости
        [~, idx] = max(abs(Ab(k:n, k))); 
        idx = idx + k - 1;   
        
        % Перестановка строк
        if idx ~= k
            Ab([k, idx], :) = Ab([idx, k], :);
        end
        
        % Обнуление элементов под главной диагональю
        for i = k+1:n
            factor = Ab(i, k) / Ab(k, k);
            Ab(i, :) = Ab(i, :) - factor * Ab(k, :);
        end
    end
    
    % Обратный ход
    x = zeros(n, 1);
    for i = n:-1:1
        x(i) = (Ab(i, end) - Ab(i, 1:n) * x) / Ab(i, i);
    end
end