'''
Raw to CSV Converter
Author: Yuya Jeremy Ong (yjo5006@psu.edu)
'''
from __future__ import print_function
import argparse

def parse_args():
    parser = argparse.ArgumentParser()
    parser.add_argument("--data", type=str, required=True, help="Original dataset to convert to csv")
    parser.add_argument("--out", type=str, required=True, help="Output Directory")
    parser.add_argument("--end", type=int, required=True, help="End index for partitioning the csv file")
    return parser.parse_args()

if __name__ == '__main__':
    # Parse Arguments
    args = parse_args()

    # Open Load File
    data = open(args.data, 'r').read().split('\n')[:-1]

    # Write Output CSV File
    out = open(args.out, 'w')
    for i, row in enumerate(data):
        if args.end != -1 and i == args.end: break
        r = row.split(',')
        out.write(str(i) + ',' + ','.join(r) + '\n')
    out.close()

    print('> DONE!')
