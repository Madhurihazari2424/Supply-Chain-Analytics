import pandas as pd
import matplotlib.pyplot as plt


# Load Dataset

df = pd.read_csv("../Dataset/supply_chain_data.csv")


# Data Information

print(df.head())

print(df.info())


# Check Missing Values

print(df.isnull().sum())


# Basic Statistics

print(df.describe())


# Order Status Analysis

status = df["Order_Status"].value_counts()

print(status)


plt.figure(figsize=(6,4))

status.plot(kind="bar")

plt.title("Order Status Distribution")

plt.xlabel("Status")

plt.ylabel("Orders")

plt.show()



# Category Analysis

category_sales = (
    df.groupby("Product_Category")["Quantity"]
    .sum()
)


print(category_sales)



plt.figure(figsize=(6,4))

category_sales.plot(kind="bar")

plt.title("Category Wise Quantity")

plt.xlabel("Category")

plt.ylabel("Quantity")

plt.show()



# Supplier Lead Time

supplier_time = (
    df.groupby("Supplier")["Lead_Time"]
    .mean()
)

print(supplier_time)
