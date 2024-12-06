function [integral, n_subdiv, error_est, runtime] = adp_quadrature(f, a, b, tol)
    tic;
    % Perhitungan awal dengan metode Trapezoidal sederhana
    mid = (a + b) / 2;
    I1 = (b - a) * (f(a) + f(b)) / 2;
    I2 = (b - a) / 4 * (f(a) + 2 * f(mid) + f(b));
    error_est = abs((4/3) * (I2 - I1)); % Estimasi error

    % Jika error memenuhi toleransi, kembalikan hasil
    if error_est <= tol
        integral = I2;
        n_subdiv = 1; % Satu subdivisi dihitung
    else
        [left_integral, left_subdiv, error_est, runtime] = adp_quadrature(f, a, mid, tol);
        [right_integral, right_subdiv, error_est, runtime] = adp_quadrature(f, mid, b, tol);
        integral = left_integral + right_integral;
        n_subdiv = left_subdiv + right_subdiv; % Total subdivisi
    end
    runtime = toc;
end
