# -*- coding: utf-8 -*-
"""
Created on Mon May 25 14:36:20 2026

@author: Sandeep Katta
"""

import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns

df = pd.read_csv(r"C:\Users\Sandeep Katta\OneDrive\Documents\hr analytics data - employees attrition and leadership impact.csv")

print(df.head())
print(df.info())
print(df.describe())
print(df.shape)

# EMPLOYEE BY DEPARTMENT 
plt.figure(figsize=(10,5))

sns.countplot(x='Department', data=df)

plt.xticks(rotation=45)

plt.title("Employees by Department")

plt.show()

#GENDER DISTRIBUTION 
sns.countplot(x='Gender', data=df)

plt.title("Gender Distribution")

plt.show()

#SALARY DISTRIBUTION 
plt.figure(figsize=(8,5))

sns.histplot(df['Salary'], bins=20)

plt.title("Salary Distribution")

plt.show()

#PERFORMANCE ANALYSIS
plt.figure(figsize=(10,5))

sns.boxplot(x='Department', y='PerformanceRating', data=df)

plt.xticks(rotation=45)

plt.title("Performance Rating by Department")

plt.show()

#CORRELATION HEATMAP 
plt.figure(figsize=(12,8))

sns.heatmap(df.corr(numeric_only=True), annot=True)

plt.title("Correlation Heatmap")

plt.show()

# TOP 10 HIGHEST SALARIES 
top_salary = df[['EmployeeID', 'Department', 'Salary']].sort_values(by='Salary', ascending=False).head(10)

print(top_salary)

#AVERAGE PERFORMANCE BY DEPARTMENT 
dept_perf = df.groupby('Department')['PerformanceRating'].mean()

print(dept_perf)

#EMPLOYEE COUNT BY EXPERIENCE LEVEL
exp_count = df['Experience Level'].value_counts()

print(exp_count)

#BONUS VS PERFORMANCE ANALYSIS SCATTER PLOT 
plt.figure(figsize=(8,5))

sns.scatterplot(x='Bonus', y='PerformanceRating', data=df)

plt.title("Bonus vs Performance Rating")

plt.show()

#SALARY BY EXPERIENCE LEVEL
plt.figure(figsize=(8,5))

sns.boxplot(x='Experience Level', y='Salary', data=df)

plt.title("Salary by Experience Level")

plt.show()
