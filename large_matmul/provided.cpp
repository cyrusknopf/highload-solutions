#include <unistd.h>
#include <stdio.h>
#include <stdint.h>
#include <cassert>

#define N 5

uint32_t matrix_a[N][N];
uint32_t matrix_b[N][N];
uint32_t matrix_c[N][N];

void compute_solution() {
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            uint32_t sum = 0;
            for (int k = 0; k < N; k++) {
                sum += matrix_a[i][k] * matrix_b[k][j];
            }

            matrix_c[i][j] = sum;
        }
    }
}

static size_t read_all(int fd, void *buf, size_t count) {
    size_t total = 0;
    while (total < count) {
        ssize_t n = read(fd, (char*)buf + total, count - total);
        if (n <= 0) break;
        total += n;
    }
    return total;
}

int main() {
    size_t expected = 2UL * N * N * sizeof(uint32_t);
    size_t r1 = read_all(STDIN_FILENO, matrix_a, sizeof(matrix_a));
    size_t r2 = read_all(STDIN_FILENO, matrix_b, sizeof(matrix_b));
    assert(r1 + r2 == expected);
    {
        char tail;
        ssize_t x = read(STDIN_FILENO, &tail, 1);
        assert(x == 0);
    }

    compute_solution();

    write(STDOUT_FILENO, matrix_c, sizeof(matrix_c));

    return 0;
}
