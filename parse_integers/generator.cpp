#include <cstddef>
#include <cassert>
#include <cstdio>
#include <cstdlib>
#include <iostream>
#include <print>
#include <sys/types.h>
#include <unistd.h>

constexpr size_t N = 50'000'000;
constexpr size_t MAX_VAL = 2147483647;

auto
main(int argc, char** argv) -> int
{
    assert(argc == 2);
    srand(atoi(argv[1]));

    size_t ans = 0;
    for (size_t i = 0; i < N; i++) {
      const size_t val = rand() % (MAX_VAL + 1);
      std::println("{}", val);
      ans += val;
    }

    std::cerr << ans << '\n';

    return 0;
}
