function [R, n] = Romberg1(f, a, b, tol)
    % Inisialisasi variabel
    Err = 1.0;  % Error awal, akan dibandingkan dengan toleransi
    n = 1;      % Iterasi awal
    R(1,1) = (f(a) + f(b)) * (b - a) / 2; % Aproksimasi awal menggunakan trapezoid sederhana

    % Iterasi hingga error memenuhi toleransi
    while Err > tol
        n = n + 1;                     % Increment jumlah iterasi
        m = 2^(n - 1)+1;             % Jumlah titik dalam metode trapezoid

        % Hitung nilai RepeatedTrapezoid
        R(n,1) = RepeatedTrapezoid(f, a, b, m);

        % Iterasi untuk perbaikan nilai menggunakan ekstrapolasi Romberg
        for j = 2:n
            R(n,j) = (4^(j-1) * R(n,j-1) - R(n-1,j-1)) / (4^(j-1) - 1);
        end

        % Hitung error sebagai perbedaan nilai terkini dengan nilai sebelumnya
        Err = abs(R(n,n) - R(n-1,n-1));
    end
end

