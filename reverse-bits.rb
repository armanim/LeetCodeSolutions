# Solutin for Reverse Bits
# URL: https://leetcode.com/problems/reverse-bits/

# @param {Integer} n, a positive integer
# @return {Integer}
def reverse_bits(n)
  bits = []
  for i in 0...32
    bits << (n >> i & 1)
  end
  answer = 0

  for b in bits
    answer = answer << 1
    answer += b
  end
  answer
end