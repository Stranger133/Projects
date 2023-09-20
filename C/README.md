# Simple Billing System in C 

This C program is a simple billing system that allows users to input the quantity of various mobile phones they want to purchase. It calculates the total cost of the selected mobile phones based on their prices and quantities.

## Table of Contents

- [Introduction](#introduction)
- [Features](#features)
- [Getting Started](#getting-started)
- [Usage](#usage)
- [Contributing](#contributing)
- [License](#license)

## Introduction

The program defines a structure called `article` to represent mobile phones with attributes like name, quantity, and price. Users are prompted to input the number of articles they want to purchase (between 1 and 7), and then they provide the code for each article they wish to purchase. The program validates the code, quantity, and ensures that the quantity does not exceed the available stock. It calculates the total cost of the selected articles and displays a bill.

## Features

- **Input Validation:** The program validates user inputs for article code, quantity, and article selection.
- **Article Database:** It maintains an internal database of articles with codes, names, quantities, and prices.
- **Total Calculation:** The program calculates the total cost of selected articles based on their prices and quantities.
- **Billing Display:** It displays a bill with a breakdown of the selected articles, their quantities, unit prices, and total cost.

## Usage

Once the program is running, you can use it as follows:

1. **Enter the number of articles you want to purchase** (between 1 and 7).

2. For each article, **enter its code** (1-7), **quantity**, and follow the prompts.

3. The program will **calculate the total cost** and display a bill with a breakdown of the selected articles.

4. **Review the bill** to see the total cost of your purchase.
