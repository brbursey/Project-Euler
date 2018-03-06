#The sum of the squares of the first ten natural numbers is,
#              1**2 + 2**2 + ... + 10**2 = 385
#The square of the sum of the first ten natural numbers is,
#           (1 + 2 + ... + 10)2 = 552 = 3025
#Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.
#Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

def square_sum(n)
  sum = 0
  for i in 1..n
    sum += i**2
  end
  return sum
end

def sum_of_sqrs(n)
  sum = 0
  for i in 1..n
    sum += i
  end
  square = sum**2
  return square
end

#puts square_sum(100)
#puts sum_of_sqrs(100)

diff = sum_of_sqrs(100) - square_sum(100)
puts diff
