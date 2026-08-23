if [ "$1" == "-c" ]; then
  g++ -march=native --std=c++23 -O3 generator.cpp -o generator
  g++ -march=native --std=c++23 -O3 provided.cpp -o provided
  # g++ -march=native --std=c++23 -O3 solution.cpp -o solution
fi

cp provided solution

SEED=333
if [ -z "$2" ]; then
  SEED=$2
fi

./generator "$SEED" 1> /dev/shm/mm_input 2> /dev/shm/mm_ans
./solution < /dev/shm/mm_input 1> /dev/shm/mm_rep
diff /dev/shm/mm_rep /dev/shm/mm_ans

