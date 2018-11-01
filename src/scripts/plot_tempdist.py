'''
Plot Temporal Distribution
Author: Yuya Jeremy Ong (yjo5006@psu.edu)
'''
from __future__ import print_function
import numpy as np
import matplotlib.pyplot as plt

# Application Parameters
ROOT_DIR = '../../data/'
ALL_GRAPH = ROOT_DIR + 'sx-stackoverflow.txt'
QA_GRAPH = ROOT_DIR + 'sx-stackoverflow-a2q.txt'
CQ_GRAPH = ROOT_DIR + 'sx-stackoverflow-c2q.txt'
CA_GRAPH = ROOT_DIR + 'sx-stackoverflow-c2a.txt'

def read_data(fname):
    data = open(fname, 'r').read().split('\n')[:-1]
    data = list(map(lambda x: x.split(' '), data))
    return data

def plot_timedist(data, title, bins=50):
    times = [int(d[1]) for d in data]
    plt.hist(times, bins, facecolor='green', alpha=0.75)
    plt.title(title)
    plt.show()

# Plot Graph
graph = read_data(CA_GRAPH)
plot_timedist(graph, 'Temporal Distribution of CA Interactions')
