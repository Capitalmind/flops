# Bash Script for Measuring CPU Performance with Sysbench

This bash script measures the CPU performance of your system using the `sysbench` tool. It runs the sysbench CPU test with 16 threads and 40000 CPU max primes for a duration of 10 seconds.

The script then extracts the number of computed prime numbers and the time taken from the output, and calculates the FLOPS (floating-point operations per second) and MFLOPS (million floating-point operations per second) values.

Finally, the script prints the FLOPS and MFLOPS values to the console.

## Prerequisites

- `sysbench` tool should be installed on your system.

## Usage

1. Clone the repository to your local machine:
git clone https://github.com/your-username/sysbench-cpu-performance.git

2. Navigate to the directory:
cd sysbench-cpu-performance

3. Make the script executable:
chmod +x cpu-performance.sh

4. Run the script:

## Output

The script will output the FLOPS and MFLOPS values to the console in the following format:

FLOPS: [FLOPS value]
MFLOPS: [MFLOPS value]


The MFLOPS value will be rounded to 4 decimal places.

## License

This script is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
