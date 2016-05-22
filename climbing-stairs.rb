# Solution for Climbing Stairs
# URL: https://leetcode.com/problems/climbing-stairs/

# @param {Integer} n
# @return {Integer}
def climb_stairs(n)
  return n if n == 1 or n == 2
  last_last = 1
  last = 2
  result = 0
  for i in 3..n
    result = last + last_last
    last_last = last
    last = result
  end
  return result
end