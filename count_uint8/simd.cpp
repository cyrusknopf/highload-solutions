#include <ammintrin.h>
#include <cassert>
#include <cstddef>
#include <immintrin.h>
#include <iostream>
#include <sys/mman.h>
#include <sys/types.h>
#include <unistd.h>
#include <x86intrin.h>

/*
resources used

http://0x80.pl/notesen/2019-01-29-simd-count-byte.html
https://en.algorithmica.org/hpc/simd/intrinsics/
https://www.intel.com/content/www/us/en/docs/intrinsics-guide/index.html
*/

constexpr size_t N = 250'000'000;
constexpr int STDIN = 0;

constexpr int FLAGS = MAP_PRIVATE | MAP_POPULATE | MAP_NORESERVE;
static const __m256i MASK = _mm256_set1_epi8(127);  
static const __m256i ALL_ZEROES = _mm256_setzero_si256();

auto
main() -> int
{
  constexpr std::nullptr_t hint = nullptr;
  alignas(64) uint8_t *in = (uint8_t *)mmap(hint, N, PROT_READ, FLAGS, STDIN, 0);
  assert(in != MAP_FAILED);
  assert(in);

  const uint8_t* end = in + N;

  __m256i out {ALL_ZEROES};

  uint8_t* ptr = in;

  while (ptr + 255 * 32 < end) {
    __m256i local_sum = ALL_ZEROES;

    for (size_t i = 0; i < 255; i++, ptr += 32) {
      __m256i bytes = _mm256_load_si256((__m256i *) ptr);
      __m256i mask = _mm256_cmpeq_epi8(MASK, bytes); // byte =FF(-1) if match, =0 if not

      local_sum = _mm256_sub_epi8(local_sum, mask); // local_sum-=-1 if match, local_sum-=0 not
    }

    // each byte in local_sum is a count. sum into four 64-bit vals
    __m256i _64bit_sums = _mm256_sad_epu8(local_sum, ALL_ZEROES);
    out = _mm256_add_epi64(out, _64bit_sums);
  }

  uint64_t res = 0;

  while (ptr < end) {
    uint8_t val = *ptr++;
    res += val==127;
  }

  assert(ptr == end);

  res += _mm256_extract_epi64(out, 0);
  res += _mm256_extract_epi64(out, 1);
  res += _mm256_extract_epi64(out, 2);
  res += _mm256_extract_epi64(out, 3);

  std::cout << res << '\n';

  return 0;
}
