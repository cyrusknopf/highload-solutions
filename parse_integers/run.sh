if [ "$1" == "-c" ]; then
  g++ -march=native --std=c++23 -O3 generator.cpp -o generator
  g++ -march=native --std=c++23 -O3 solution.cpp -o solution
fi

SEED=333
if [ "$2" ]; then
  SEED=$2
fi
echo "seed=$SEED"

./generator "$SEED" 1> /dev/shm/pi_input 2> /dev/shm/pi_ans
time ./solution < /dev/shm/pi_input 1> /dev/shm/pi_reply
cmp /dev/shm/pi_reply /dev/shm/pi_ans
