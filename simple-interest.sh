#!/bin/bash

# Simple Interest Calculator
# Usage: ./simple-interest.sh principal rate time

if [ "$#" -ne 3 ]; then
  echo "Usage: $0 principal rate time"
  echo "Calculate simple interest with principal, rate (in %), and time (in years)."
  exit 1
fi

principal=$1
rate=$2
time=$3

# Calculate simple interest
interest=$(echo "scale=2; $principal * $rate * $time / 100" | bc)

echo "Simple Interest = $interest"
