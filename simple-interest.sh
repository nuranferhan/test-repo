#!/bin/bash

# Simple Interest Calculator
# Formula: SI = (P * R * T) / 100
# Where:
# P = Principal amount
# R = Rate of interest per year
# T = Time period in years

echo "Simple Interest Calculator"
echo "========================="

# Read input from user
read -p "Enter Principal amount: " principal
read -p "Enter Rate of interest (per year): " rate
read -p "Enter Time period (in years): " time

# Calculate simple interest
simple_interest=$(echo "scale=2; ($principal * $rate * $time) / 100" | bc -l)

# Display result
echo "Principal Amount: $principal"
echo "Rate of Interest: $rate% per year"
echo "Time Period: $time years"
echo "Simple Interest: $simple_interest"
echo "Total Amount: $(echo "scale=2; $principal + $simple_interest" | bc -l)"
