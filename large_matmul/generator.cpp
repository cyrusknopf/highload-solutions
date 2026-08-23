#include <array>
#include <cstddef>
#include <cassert>
#include <cstdint>
#include <cstdlib>
#include <sys/types.h>
#include <unistd.h>

constexpr std::size_t N = 1024;
constexpr int STDOUT = 1;
constexpr int STDERR = 2;

std::array<uint32_t, N * N> A{};
std::array<uint32_t, N * N> B{};
std::array<uint32_t, N * N> C{};

auto
main(int argc, char** argv) -> int
{
    assert(argc == 2);
    srand(atoi(argv[1]));

    for (size_t row = 0; row <  N; row++) {
        for (size_t col = 0; col < N; col++) {
            A[(row * N) + col] = rand() % N;
            B[(row * N) + col] = rand() % N;
        }
    }

    for (size_t r = 0; r < N; r++) {
        for (size_t c = 0; c < N; c++) {
            uint32_t sum = 0;
            for (size_t k = 0; k < N; k++) {
                sum += A[(r*N)+k] * B[(k*N)+c];
            }
            C[(r*N)+c] = sum;
        }
    }

    write(STDOUT, A.data(), sizeof(A));
    write(STDOUT, B.data(), sizeof(B));
    write(STDERR, C.data(), sizeof(C));

    return 0;
}
