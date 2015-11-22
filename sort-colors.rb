# Solutin for Sort Colors
# URL: https://leetcode.com/problems/sort-colors/

# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def sort_colors(nums)
    for i in 1...nums.length
      j = i
      while (j > 0 and nums[j] < nums[j - 1])
        nums[j], nums[j - 1] = nums[j - 1], nums[j]
        j -= 1
      end
    end
end