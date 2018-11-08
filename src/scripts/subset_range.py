'''
Subset Range: Using quartiles of the data, we compute the timestamp ranges for the data set.
Author: Yuya Jeremy Ong (yjo5006@psu.edu)
'''
from __future__ import print_function
import argparse
from scipy import stats

def parse_args():
    parser = argparse.ArgumentParser()
    parser.add_argument("--data", type=str, required=True, help="Original dataset to convert to csv")
    return parser.parse_args()

if __name__ == '__main__':
    # Parse Arguments
    args = parse_args()

    # Read CSV File
    data = open(args.data, 'r').read().split('\n')[:-1]
    data = list(map(lambda x: x.split(','), data))

    # Collect ID List
    ts_list = sorted([int(d[2]) for d in data])

    # Compute Quartile Partition Size
    size = len(ts_list) / 4

    # Build Timestamp to Record ID Dictionary
    tsid = {}
    for i, d in enumerate(data): tsid[int(d[2])] = i

    print('TOTAL RECORDS: ' + str(len(ts_list)) + '\n')

    # Compute Quartiles
    for i, p in enumerate([25, 50, 75, 100]):
        print('[Partition ' + str(i) + ': ' + str(p) + '% of Data]')
        ts = ts_list[size * (i + 1)]
        print('Timestamp: ' + str(ts))
        print('Record ID: ' + str(tsid[int(ts)]))
        print('\n')
