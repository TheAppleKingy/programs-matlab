clc
clear all

N = [10, 100, 1000, 10000, 100000]
hold on
for t = 1:length(N)
    n = N(t)
    for i = 1:n
        X(i) = -1 + (i - 1) * 2 / (n - 1);
    end
    XX{t} = X
    disp(X)

    eps = -0.1 + 0.2 * rand

    for i = 1:n
        Y(i) = X(i)^2 + X(i) + 1 + eps;
    end
    disp(Y)

    p = 2;

    %матрица коэффициентов
    z = p;
    for i = 1:(p + 1)
        for k = 1:(p + 1)
            R(i,k) = sum(X.^z);
            z = z - 1;
        end
        z = p + i;
    end
    R = fliplr(R);
    disp(R);
    %теперь столбец свободных членов

    for k = 1:p + 1
        for i = 1:n
            x(k,i) = X(i)^(k - 1);
        end
    end
    disp(x)

    yx = x.*Y;

    disp(yx);

    yx = sum(yx,2);
    disp(yx);

    %находим искомые коэффициенты
    A = inv(R)*yx;
    A = A';
    A = fliplr(A);
    disp(A);

    %находим значения аппроксимирующего полинома
    for k = 1:(p + 1)
        for i = 1:n
            x1(k,i) = X(i)^(k - 1);
        end
    end

    x1 = flipud(x1);
    disp(x1);  %матрица полиномов без кефов(1 столбик 1 полином)

    for k = 1:(p + 1)
        for i = 1:n
            F(k,i) = x1(k,i) * A(k);
        end
    end

    F = sum(F);
    disp(F);
    
    delta{t} = Y - F
    plot(X, delta{t})
end
legend
grid on




