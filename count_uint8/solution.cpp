#include <cstddef>
#include <unistd.h>
#include <sys/mman.h>
#include <iostream>
#include <cassert>

constexpr size_t N = 250'000'000;
constexpr int STDIN = 0;

constexpr int FLAGS = MAP_PRIVATE | MAP_POPULATE | MAP_NORESERVE;

auto
main() -> int
{
  alignas(64) char *in = (char *)mmap(nullptr, N, PROT_READ, FLAGS, STDIN, 0);
  assert(in != MAP_FAILED);
  assert(in);

  size_t out{0};

  for (size_t i = 0; i < N; i++) {
      out += (in[i] == 127);
  }

  std::cout << out << '\n';

  return 0;
}
