# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
# Find the largest palindrome made from the product of two 3-digit numbers.

# returns boolean
def is_palindrome?(n)
  answer = nil
  number = n.to_s
  for i in 0..number.length/2
    if number[i] == number[number.length-1-i]
      answer = true
    else
      answer = false
      break
    end
  end
  return answer
end

# prints all palindromes made from products of two 3-digit numbers
def largest_pal
  list = Array.new
  for i in 100..999
    for j in 100..999
      n = i*j
      if is_palindrome?(n)
        list.push(n) unless list.include?(n)
      end
    end
  end
  list = list.sort.reverse
  puts list
end

largest_pal
