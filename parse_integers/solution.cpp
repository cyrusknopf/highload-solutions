#include <bitset>
#include <cassert>
#include <emmintrin.h>
#include <iostream>
#include <print>
#include <sys/mman.h>
#include <unistd.h>
#include <x86intrin.h>
#include <immintrin.h>

/**

resources used:
https://stackoverflow.com/questions/77800999/fastest-way-to-mask-out-bytes-higher-than-separator-position-with-simd

max val =
2147483647

=> max 10 chars per number
=> max 11 chars per line

stdin stream

([0-9]|1-10|\n)|50 000 000|

1. load bytes into simd reg
2. find occurence of \n
3. mask out higher
4. transform those bytes into digit ( - '0')
5. transform (decimal) digits into integer
6. add integer to total

=> then where do we next read from?
=> can we use the bytes that would've otherwise been masked out

*/

constexpr std::nullptr_t HINT = nullptr;
constexpr size_t OFFSET = 0;
constexpr int FLAGS = MAP_PRIVATE | MAP_POPULATE | MAP_NORESERVE;

constexpr size_t N = 50'000'000;
constexpr size_t MAX_LINE_SIZE = 11;
constexpr size_t MAX_FILE_SIZE = MAX_LINE_SIZE * N;

static const __m128i NEWLINE = _mm_set1_epi8('\n');

static const __m128i IDXS =
    _mm_set_epi8(15, 14, 13, 12, 11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1, 0);

static const __m128i FST_MUL = _mm_setr_epi32(1000, 100, 10, 0);
static const __m128i SND_MUL = _mm_setr_epi32(0, 100'000'000, 10000, 1);

auto
print_m128(__m128i in, const char* name = nullptr) -> void
{
  std::cout << std::hex;
  std::cout << "0x";
  // std::cout << std::bitset<64>(_mm_extract_epi64(in, 1));
  // std::cout << std::bitset<64>(_mm_extract_epi64(in, 0));
  std::cout << _mm_extract_epi64(in, 1);
  std::cout << _mm_extract_epi64(in, 0);
  std::cout << std::dec;
  if (name) std::cout << " <- " << name;
  std::cout << '\n';
}

auto
main() -> int
{
  alignas(64) int8_t *in =
      (int8_t *)mmap(HINT, MAX_FILE_SIZE, PROT_READ, FLAGS, STDIN_FILENO, OFFSET);

  size_t count = 0;
  // TODO: Evaluate whether aliasing negatively effects enough
  int8_t* ptr = in;

  // while (count < N) {
    __m128i buf = _mm_loadu_si128((__m128i *)ptr);
    __m128i nls = _mm_cmpeq_epi8(buf, NEWLINE);
    uint16_t matches = _mm_movemask_epi8(nls);
    uint16_t num_digits = __builtin_ctz(matches);
    // mask out indexes which are less than the number of digits we have
    __m128i mask = _mm_cmplt_epi8(IDXS, _mm_set1_epi8(num_digits));

    __m128i digits = _mm_and_si128(buf, mask);
    // advance past these digits and the \n
    ptr += num_digits + 1;

    // take the digits and extend them to 16 bit integers
    __m128i lo = _mm_unpacklo_epi8(digits, _mm_setzero_si128());
    __m128i hi = _mm_unpackhi_epi8(digits, _mm_setzero_si128());
  // }
  //

  print_m128(lo, "lo");
  print_m128(hi, "hi");

  std::println("0");
  return 0;
}

