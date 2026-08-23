#include <cassert>

#include <cstdint>
#include <cstdio>
#include <sys/mman.h>
#include <unistd.h>

constexpr size_t N = 2'000;

constexpr int FLAGS = MAP_PRIVATE | MAP_POPULATE | MAP_NORESERVE;

uint32_t out[N*N];

auto
static kernel(uint32_t* lhs, uint32_t* rhs, uint32_t* out) -> void {
    for (size_t r = 0; r < N; r++) {
        for (size_t c = 0; c < N; c++) {
            uint32_t sum = 0;
            for (size_t k = 0; k < N; k++) {
                sum += lhs[(r*N)+k] * rhs[(k*N)+c];
            }
            out[(r*N)+c] = sum;
        }
    }
}

auto
main() -> int {
  uint32_t *data = (uint32_t *)mmap(nullptr, 2ULL * N * N * sizeof(uint32_t), PROT_READ,
                                              FLAGS, STDIN_FILENO, 0);

  uint32_t* a = data;
  uint32_t* b = data + (N * N);

  kernel(a, b, out);

  write(STDOUT_FILENO, out, sizeof(out));

  return 0;
}
