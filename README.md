# q-files

  

This repository has some basic q scripts I wrote while trying to learn Q. The ShallowDive directory documents my attempts to solve the Lisp/Perl/Q - [99 problems](https://www.ic.unicamp.br/~meidanis/courses/mc336/problemas-lisp/L-99_Ninety-Nine_Lisp_Problems.html) set. 

  

# Instructions:

  

## Data Preparation

- Use the CSV files in the attached assignment.zip as your dataset for tasks 1 to 4. A readme.txt describes the fields.

- Load provided CSV files into in-memory tables. (Hint use “0:”.)

- Join weather to reading tables so that prevailing weather conditions are present with each reading.

  

## Tasks

1. Write a function to extend the readings table in memory. It should take the number of meters to add. Consider adding plausible variation to the simulated readings based on the data provided. Document any assumptions.

2. Write a function that extends the readings table by one day’s worth of readings for all meters.

3. Write a function that aggregates consumption by meter.

4. Extend the weather table to include Boolean columns indicating whether conditions were likely to have included sun, clouds, precipitation, etc.

5. Write a function that takes a table, the column name of the dependent variable, and a list of column names of independent variables and returns the linear regression coefficients.

6. Write a function that computes the value in a vector that occurs most frequently (mode). If multiple values have the same frequency, the smallest of them is chosen.

7. Write a function that generates the first n rows of Pascal’s triangle. (Hint, use adverbs instead of loops.)

8. Review the file optimize.q in the attached assignment.zip and optimize it.
