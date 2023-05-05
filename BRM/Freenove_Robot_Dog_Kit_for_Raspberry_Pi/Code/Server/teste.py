import csv
import Control

threshold_lh = -0.388508489993943

#while True:

with open('lh_value.csv', newline='') as csvfile:

    reader = csv.reader(csvfile)

    for row in reader:

        value = float(row[0])

        if value > threshold_lh:
            #print("Walk foward")
            hello= Control.Control()
            hello.forWard()
