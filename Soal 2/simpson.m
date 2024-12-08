function [result, elapsed_time] = definite_integral_simpson(f, a, b, n)
    tic;

    h = (b - a) / n;
    result = f(a) + f(b);
    x = a;

    for i = 1:n-1
        x = x + h;
        if mod(i, 2) == 0
            result = result + 2 * f(x);
        else
            result = result + 4 * f(x);
        end
    end

    result = (h / 3) * result;

    elapsed_time = toc;
end