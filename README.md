# CCValidation
A toy program in Haskell to validate Credit Card Number based on Luhn algorithm


#Introduction

In this exercise I have implemented a validation algorithm for a 16 digit number simulating a credit card number.


Following these steps:

1. Double the value of every second digit beginning from the right. For example [1,2,7,4] becomes [2,2,14,4].

2. Sum all the digits.

For example, [2,2,14,4] becomes 2+2+1+4+4 = 13

3. Calculate the remainder when the sum is divided by 10.

For the above example, the remainder would be 3.

4. If the result equals 0, the credit card number is valid.


Input Format

4012888888881881


Output Format

Credit Card 4012888888881881 is valid.

Credit Card 4012888888881882 is not valid. 
