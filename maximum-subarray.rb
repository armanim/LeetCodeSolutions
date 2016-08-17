# Solution for Maximum Subarray
# URL: https://leetcode.com/problems/maximum-subarray/

# @param {Integer[]} nums
# @return {Integer}
def max_sub_array(nums)
  last = 0
  max = nums.first
  nums.each do |num|
    if last > 0
      last += num
    else
      last = num
    end
    max = last if last > max
  end 
  max
end