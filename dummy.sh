#! /bin/bash

printenv

echo "Running dummy script"

# Generate random number between 1-10000
RANDOM_NUM=$((1 + RANDOM % 10000))

# Output to random-number.txt in current directory
echo $RANDOM_NUM > random-number.txt
