import pandas as pd
import csv
import sys
sys.path.insert(0, "/path/to/Freenove_Robot_Dog_Kit_for_Raspberry_Pi/Code/Server")
import time
import Control

df = pd.read_csv('lh_value.csv')
threshold_lh = -0.388508489993943
movement_delay = 0.5

while True:
    for value in 'lh_value.csv':
        if value > threshold_lh:
            #Control.forWard()
            #time.sleep(movement_delay)
            print("Walk forward")