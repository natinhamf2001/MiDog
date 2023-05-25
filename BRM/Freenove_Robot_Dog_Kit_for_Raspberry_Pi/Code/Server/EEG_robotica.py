import pandas as pd
from Control import *
import time

control = Control()

df1 = pd.read_csv('eeg_data.csv')
df2 = pd.read_csv('thresholds.csv')

data = df1.to_numpy()
threshold = df2.to_numpy()

length = len(data)

for i in range(data):
    if data(i,0) < threshold(0):
        for i in range(1):
            control.forWard()
    if data(i,1) < threshold(1):
        for i in range(1):
            control.backWard()
    if data(i,2) < threshold(2):
        for i in range(1):
            control.setpLeft()
    if data(i,4) < threshold(4):
        for i in range(1):
            control.setpRight()
    time.sleep(0.004)