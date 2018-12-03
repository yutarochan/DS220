'''
Sort Timestamp: Script for resorting temporal order of edges and generate CSV file.
Author: Yuya Jeremy Ong (yjo5006@psu.edu)
'''
from __future__ import print_function
import argparse

def parse_args():
    parser = argparse.ArgumentParser()
    parser.add_argument("--data", type=str, required=True, help="Original dataset to convert to csv")
    parser.add_argument("--out", type=str, required=True, help="Output for the sorted temporal data")
    return parser.parse_args()

if __name__ == '__main__':
    # Parse Arguments
    args = parse_args()

    # Read CSV File
    data = open(args.data, 'r').read().split('\n')[:-1]
    data = list(map(lambda x: x.split(' '), data))

    # Sort by Temporal Order
    data = list(sorted(data, key=lambda x: x[2]))

    # Generate CSV File
    out = open(args.out, 'w')
    for d in data: out.write(','.join(d) + '\n')
    out.close()
