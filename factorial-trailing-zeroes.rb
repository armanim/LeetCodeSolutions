# Solutin for Factorial Trailing Zeroes
# URL: https://leetcode.com/problems/factorial-trailing-zeroes/

# @param {Integer} n
# @return {Integer}
def trailing_zeroes(n)
  result = 0

  for i in 1..(Math.log(n / 5) + 1)
    result += n / 5 ** i
  end

  return result
end
