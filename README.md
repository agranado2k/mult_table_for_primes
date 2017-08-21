## Objective
Write a program that prints out a multiplication table of the first 10
prime number.
 - The program must run from the command line and print one table to
STDOUT.
 - The first row and column of the table should have the 10 primes, with
each cell
containing the product of the primes for the corresponding row and
column.

### Notes
 - Consider complexity. How fast does your code run? How does it scale?
 - Consider cases where we want N primes.
 - Do not use the Prime class from stdlib (write your own code).
 - Write tests. Try to demonstrate TDD/BDD.
 - If you’re using external dependencies please specify those
dependencies and how to
install them.
 - Please package your code, OR include running instructions.

## Time complexity analysis
The time complexity for the solution is O($n^2$), where n is the number of prime numbers, because there are two nested loops for calculate the multiplication table. Probably is possible to use a more clever algorithm for do this work.
However the low bounder is $\Omega$(nlogn) that is the time complexity to get the first n prime  numbers by [distribution law of the prime numbers](https://en.wikipedia.org/wiki/Prime_number_theorem).

## How to configure
Execute the command:
```
gem install bundler && bundle
```

## How to test
Execute the command:
```
bundle exec rake test
```

## How to run
Execute the command:
```
./bin/prime_mult_table
```
or the command:
```
ruby bin/prime_mult_table
```
Also is possible to pass the number of prime as parameter:
```
./bin/prime_mult_table 6
```
or
```
ruby bin/prime_mult_table 6
```

## Result

| #  | 2  | 3  | 5   | 7   | 11  | 13  | 17  | 19  | 23  | 29  |
|:---|:---|:---|:---|:---|:---|:---|:---|:---|:---|:---|:---|:---|
| 2  | 4  | 6  | 10  | 14  | 22  | 26  | 34  | 38  | 46  | 58  |
| 3  | 6  | 9  | 15  | 21  | 33  | 39  | 51  | 57  | 69  | 87  |
| 5  | 10 | 15 | 25  | 35  | 55  | 65  | 85  | 95  | 115 | 145 |
| 7  | 14 | 21 | 35  | 49  | 77  | 91  | 119 | 133 | 161 | 203 |
| 11 | 22 | 33 | 55  | 77  | 121 | 143 | 187 | 209 | 253 | 319 |
| 13 | 26 | 39 | 65  | 91  | 143 | 169 | 221 | 247 | 299 | 377 |
| 17 | 34 | 51 | 85  | 119 | 187 | 221 | 289 | 323 | 391 | 493 |
| 19 | 38 | 57 | 95  | 133 | 209 | 247 | 323 | 361 | 437 | 551 |
| 23 | 46 | 69 | 115 | 161 | 253 | 299 | 391 | 437 | 529 | 667 |
| 29 | 58 | 87 | 145 | 203 | 319 | 377 | 493 | 551 | 667 | 841 |

