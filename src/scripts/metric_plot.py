'''
Metrics Plot: Plot results for metrics evaluation.
Author: Yuya Jeremy Ong (yjo5006@psu.edu)
'''
from __future__ import print_function
import seaborn as sns
import matplotlib.pyplot as plt

# Application Parameters
OUTPUT_DIR = '../../plot/time_metrics/'

# Define Plot Values
X = [0.25, 0.50, 0.75, 1.0]
A2Q = [6.93983929, 14.28503157, 21.55098851, 27.06759834]
C2A = [7.23381126, 14.81627333, 22.61923083, 38.93830667]
C2Q = [9.34690959, 21.07613011, 35.86664136, 35.67702665]

# Plot Values
plt.plot(X, A2Q, 'ro-', label='A2Q')
plt.plot(X, C2A, 'gs-', label='C2A')
plt.plot(X, C2Q, 'b^-', label='C2Q')

plt.title('Query 6 Benchmark [MySQL]')
plt.xlabel('Data Ratio')
plt.ylabel('Execution Time (sec)')
plt.legend()

plt.savefig(OUTPUT_DIR + 'mysql_q6.png')
