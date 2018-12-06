'''
Entity Extraction: Obtain list of entities from the edge nodes and output text file of nodes.
Author: Yuya Jeremy Ong (yjo5006@psu.edu)
'''
from __future__ import print_function
import argparse
import itertools
from multiprocessing.pool import Pool

def parse_args():
    parser = argparse.ArgumentParser()
    parser.add_argument("--data", type=str, required=True, help="Original dataset to convert to csv")
    parser.add_argument("--out", type=str, required=True, help="Output Directory")
    return parser.parse_args()

if __name__ == '__main__':
    # Parse Arguments
    args = parse_args()

    # Open Load File
    data = open(args.data, 'r').read().split('\n')[:-1]

    # Collect Unique Node List
    def check_node(row):
        r = row.split(',')
	return int(r[1]), int(r[2])

    # Multiprocess
    p = Pool(processes=64)
    nodes = p.map(check_node, data)

    # Sort Results
    print('> Flattening and Sorting')
    nodes = list(itertools.chain(*nodes))	
    nodes = sorted(set(nodes))
    
    # Output Results
    out = open(args.out, 'w')
    for n in nodes: out.write(str(n) + '\n')
    out.close()

    print('> DONE!')
