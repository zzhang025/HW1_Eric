#! /usr/bin/env python

import pandas as pd
import numpy as np

print('Question 1')
df=pd.read_csv('2007.csv')
print(df[df['Origin']=='SFO']['ArrDelay'][0:3])
print(list(df[df['Origin']=='SFO']['ArrDelay'][0:3]))

print('Question 2')
df.reset_index(inplace=True)
df1=df.groupby('Dest').count().sort_values('index',ascending=False)
print(df1[0:3]['index'])