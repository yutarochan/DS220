#!/bin/bash
mkdir data
cd data

mkdir raw
cd raw

# Download Data
wget http://snap.stanford.edu/data/sx-stackoverflow.txt.gz
wget http://snap.stanford.edu/data/sx-stackoverflow-a2q.txt.gz
wget http://snap.stanford.edu/data/sx-stackoverflow-c2q.txt.gz
wget http://snap.stanford.edu/data/sx-stackoverflow-c2a.txt.gz

gunzip sx-stackoverflow.txt.gz
gunzip sx-stackoverflow-a2q.txt.gz
gunzip sx-stackoverflow-c2q.txt.gz
gunzip sx-stackoverflow-c2a.txt.gz
