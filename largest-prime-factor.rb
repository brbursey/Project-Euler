def primes(n)
  if is_divisible?(n)
    #if n is divisible, continue on. If not, then our answer is n
    a, b = 0
    for i in 2..Math.sqrt(n)
      if n % i == 0
        a = i
        b = n/i
        break
      end
    end
    if a >= b
      primes(a)
    else
      primes(b)
    end
  else
    puts n
  end
end

# checks to see if n is divisible
def is_divisible?(n)
  answer = false
  for i in 2..Math.sqrt(n)
    if n % i == 0
      answer = true
    end
  end
  return answer
end
primes(13195)
primes(600851475143)
