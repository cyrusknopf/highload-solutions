if [ "$1" == "-c" ]; then
  g++ -march=native --std=c++23 -O3 generator.cpp -o generator
  g++ -march=native --std=c++23 -O3 solution.cpp -o solution
fi

SEED=333
if [ "$2" ]; then
  SEED=$2
fi
echo "seed=$SEED"

./generator "$SEED" 1> /dev/shm/mm_input 2> /dev/shm/mm_ans
./solution < /dev/shm/mm_input 1> /dev/shm/mm_reply
diff /dev/shm/mm_reply /dev/shm/mm_ans
