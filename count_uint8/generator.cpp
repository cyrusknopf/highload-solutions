#include <cstddef>
#include <cstdint>
#include <cstdlib>
#include <iostream>
#include <unistd.h>

constexpr size_t N = 250'000'000;
constexpr int STDOUT = 1;
constexpr int STDERR = 2;

auto
main() -> int
{
    constexpr size_t BUF_SIZE = sizeof(uint8_t) * N;
    int out{0};
    uint8_t* buf = (uint8_t*) malloc(BUF_SIZE);
    for (size_t i = 0; i < N; i++) {
        // int val {rand() % 128};
        int val = 127;
        buf[i] = val;
        out+=val==127;
    }

    write(STDOUT, buf, BUF_SIZE);
    std::cerr << out << '\n';

    return 0;
}

