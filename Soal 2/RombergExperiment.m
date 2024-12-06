function RombergExperiment(f, a, b, tol)
    % Daftar level tabel yang akan diuji
    m_levels = [4, 6, 7, 9, 10];

    % Inisialisasi hasil
    results = [];

    % Iterasi untuk setiap level tabel
    for m = m_levels

        % Catat waktu mulai
        tic;

        % Inisialisasi tabel Romberg
        R = zeros(m, m);
        R(1,1) = (f(a) + f(b)) * (b - a) / 2;

        % Hitung nilai Romberg hingga level m
        for n = 2:m
            m_points = 2^(n - 1)+1; % Jumlah subdivisi
            R(n,1) = RepeatedTrapezoid(f, a, b, m_points);
            for j = 2:n
                R(n,j) = (4^(j-1) * R(n,j-1) - R(n-1,j-1)) / (4^(j-1) - 1);
            end

            % Hitung error pada setiap level n (perbedaan antara R(n,n) dan R(n-1,n-1))
            Err = abs(R(n, n) - R(n-1, n-1)); % Error per level Romberg
        end

        % Waktu komputasi selesai
        elapsed_time = toc;

        % Hitung nilai integral berdasarkan hasil Romberg terakhir
        integral_value = R(m,m);

        % Simpan hasil integral, waktu, error, dan level m
        result.integral = integral_value;
        result.time = elapsed_time;
        result.error = Err; % Menyimpan error yang dihitung
        result.m = m;
        results = [results; result];

        % Tampilkan hasil
        fprintf('Level m = %d, Integral = %.10f, Error = %.10e, Waktu = %.6f detik\n', ...
            m, result.integral, result.error, result.time);
    end
end

