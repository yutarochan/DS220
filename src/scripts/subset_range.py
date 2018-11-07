'''
Subset Range: Using quartiles of the data, we compute the timestamp ranges for the data set.
Author: Yuya Jeremy Ong (yjo5006@psu.edu)
'''
from __future__ import print_function
from scipy import stats

def parse_args():
    parser = argparse.ArgumentParser()
    parser.add_argument("--data", type=str, required=True, help="Original dataset to convert to csv")
    return parser.parse_args()

if __name__ == '__main__':
    # Parse Arguments
    args = parse_args()

    # Read CSV File
    data = open(args.data, 'r').read().split('\n')
    data = list(map(lambda x: x.split(','), data))

    # Collect ID List
    ts_list = sort([d[2] for d in data])

    # Build Timestamp to Record ID Dictionary
    tsid = {}
    for i, d in enumerate(data): tsid[d[0]] = i

    # Compute Quartiles
    for i, p in enumerate([25, 50, 75, 100]):
        print('[Partition ' + str(i) + ': ' + str(p) + '\% of Data]')
        ts = stats.scoreatpercentile(ts_list, p)
        print('\tTimestamp: ' + str(ts))
        print('\tRecord ID: ' + str(tsid[ts]))
        print('\n')
