# Solutin for Count Primes
# URL: https://leetcode.com/problems/count-primes/

# @param {Integer} n
# @return {Integer}
def count_primes(n)
  return 0 if n < 3
  n -= 1
  result = 0
  $primes = [2]
  ps = []

  for i in 0...n
    ps << true
  end

  ps[0] = false

  for i in 2..Math.sqrt(n)
    is_prime(i)
  end

  for p in $primes
    for i in 2..(n / p)
      ps[p * i - 1] = false
      # puts "#{p} * #{i} = #{p * i}"
    end
  end

  for i in ps
    result += 1 if i
  end

  # p $primes

  result
end

def is_prime(num)
  for i in $primes
    if num % i == 0
      return false
    end
  end
  $primes << num
  return true
end