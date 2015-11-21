# Solutin for Number of 1 Bits
# URL: https://leetcode.com/problems/number-of-1-bits/

# @param {Integer} n, a positive integer
# @return {Integer}
def hamming_weight(n)
  answer = 0
    for i in 0...32
      answer += n >> i & 1
    end
    answer
end