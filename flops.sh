#!/bin/bash

# Run the sysbench CPU test with 16 threads and 40000 CPU max primes
output=$(sysbench cpu --time=10 --threads=16 --cpu-max-prime=40000 run)

# Extract the number of computed prime numbers and the time taken from the output
total_primes=$(echo "$output" | awk '/total number of events:/ {print $5}')
total_time=$(echo "$output" | awk '/total time:/ {print $3}' | tr -d 's')

# Calculate FLOPS
total_ops=$((total_primes * 2))
flops=$(echo "scale=2; $total_ops / $total_time" | bc -l)

# Calculate MFLOPS from FLOPS
mflops=$(printf "%.4f" "$(echo "$flops / 1000" | bc -l)")

# Print the FLOPS and MFLOPS values
echo "FLOPS: $flops"
echo "MFLOPS: $mflops"

