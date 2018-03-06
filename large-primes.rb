# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
# What is the 10,001st prime number?

#brute force method - Show list of primes up to n
def is_prime?(n)
  for i in 2..Math.sqrt(n)
    if n % i == 0
      return false
      break
    end
  end
  return true
end

def nth_prime(n)
  primes = Array.new
  count = 1
  for i in 2..1000000
    if is_prime?(i)
      primes.push(i)
      count += 1
      if count > n
        break
      end
    end
  end
  index = 1
  primes.each {|p|
    puts "Index: #{index}, Prime: #{p}"
    index += 1
  }
end

nth_prime(10001)
