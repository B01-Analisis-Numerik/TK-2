# Tugas Kelompok 2
## Analisis Numerik
Kelas B - Kelompok 1 - 2024/2025 Gasal

![Octave](https://img.shields.io/badge/OCTAVE-darkblue?style=for-the-badge&logo=octave&logoColor=fcd683)![Python](https://img.shields.io/badge/python-3670A0?style=for-the-badge&logo=python&logoColor=ffdd54)

### Anggota Kelompok
| Nama Kelompok | NPM |
| -- | -- |
| Adrian Aryaputra Hamzah | 2206811474 |
| Akmal Ramadhan | 2206081534 |
| Muh.Kemal Lathif Galih Putra | 2206081225 |
| Sabrina Aviana Dewi | 2206030520

### Soal 1 - Interpolations

| Dokumen | Deskripsi |
| -- | -- |
| [`1_pre-processing.ipynb`](Soal%201/1_pre-processing.ipynb) | Menghitung nilai `x_t` dari `x_px` untuk diinterpolasikan pada tahap selanjutnya. |
| [`2_basis-effect.ipynb`](Soal%201/2_basis-effect.ipynb) | Menghitung condition number matriks Vandermonde untuk menentukan basis terbaik. |
| [`3_vandermonde.ipynb`](Soal%201/3_vandermonde.ipynb) | Menghitung interpolasi dengan matriks Vandermonde. |
| [`4_newton.ipynb`](Soal%201/4_newton.ipynb) | Menghitung interpolasi dengan metode Newton. |
| [`5_cubic-spline.ipynb`](Soal%201/5_cubic-spline.ipynb) | Menghitung interpolasi dengan metode Natural Cubic Spline. |
| [`6_all-method.ipynb`](Soal%201/6_all-method.ipynb) | Plot semua hasil evaluasi ke dalam satu graik. |
| `Evaluasi` | Hasil evaluasi untuk setiap metode pada polinomial derajat 9 yang digunakan pada `6_all-method.ipynb`. |

### Soal 2 - Numerical Integration
| Dokumen | Deskripsi |
| -- | -- |
| [`simpson.m`](Soal%202/simpson.m) | Menghitung aproksimasi integral menggunakan metode Composite Simpson. |
| [`adp_quadrature.m`](Soal%202/adp_quadrature.m) | Menghitung aproksimasi integral menggunakan metode Adaptive Quadrature dengan trapezoidal rule. |
| [`RepeatedTrapezoid.m`](Soal%202/RepeatedTrapezoid.m) | Menghitung aproksimasi integral dengan RepeatedTrapezoid (Composite Trapezoid) untuk digunakan di metode Romberg. |
| [`Romberg1.m`](Soal%202/Romberg1.m) | Menghitung aproksimasi integral dengan Romberg General dengan pendekatan pencarian iterative error. (Untuk Nomer 2a)|
| [`RombergExperiment.m`](Soal%202/RombergExperiment.m) | Menghitung aproksimasi integral dengan Romberg khusus eksperiment dengan pendekatan berbagai jumlah level table yang digunakan. (Untuk Nomer 2b)|
| [`fungsiInt_y_1.m`](Soal%202/fungsiInt_y_1.m) | Fungsi log loss dengan y=1|
| [`fungsiInt_y_0.m`](Soal%202/fungsiInt_y_0.m) | Fungsi log loss dengan y=0|
