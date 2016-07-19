# Solution forFind Minimum in Rotated Sorted Array
# URL: https://leetcode.com/problems/find-minimum-in-rotated-sorted-array/

# @param {Integer[]} nums
# @return {Integer}
def find_min(nums)
  low, heigh = 0, nums.size - 1
  while nums[heigh] < nums[low]
    middle = (heigh + low) / 2
    if nums[middle] >= nums[heigh]
      low = middle + 1
    else
      heigh = middle
    end
  end
  nums[low]
end