# Solutin for Power of Two
# URL: https://leetcode.com/problems/power-of-two/

# @param {Integer} n
# @return {Boolean}
def is_power_of_two(n)
    return false if n == 0
    return true if n == 1
    
    return false if n % 2 > 0
    
    return is_power_of_two(n / 2)
end