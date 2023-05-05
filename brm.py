import pandas as pd
import csv

df = pd.read_csv('lh_value.csv')
threshold_lh = -0.388508489993943
filtered_df_lh = df.loc[df['-5.27000000000000'] > threshold_lh]
print(filtered_df_lh)


df = pd.read_csv('rh_value.csv')
threshold_rh = -1.29437601044646
filtered_df_rh = df.loc[df['-1.88000000000000'] > threshold_rh]
print(filtered_df_rh)


df = pd.read_csv('ll_value.csv')
threshold_ll = -1.66140128491797
filtered_df_ll = df.loc[df['-8.13500000000000'] > threshold_ll]
print(filtered_df_ll)


df = pd.read_csv('rl_value.csv')
threshold_rl = -4.59168491874878
filtered_df_rl = df.loc[df['6.89000000000000'] > threshold_rl]
print(filtered_df_rl)