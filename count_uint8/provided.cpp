#include <cstdio>
#include <cstdint>
#include <cassert>

#define N 250'000'000

int main() {
    static uint8_t data[N];
    size_t total = fread(data, 1, N, stdin);
    assert(total == N);
    uint8_t tail;
    assert(fread(&tail, 1, 1, stdin) == 0 && feof(stdin));

    uint64_t count = 0;
    for (size_t i = 0; i < N; i++) {
        if (data[i] == 127)
            ++count;
    }

    printf("%lu\n", count);
    return 0;
}

